# Load necessary libraries
library(ggplot2)
library(rpart)
library(rpart.plot)

# Read the dataset
data <- read.csv("Bachelor_Degrees_Majors.csv")

# Convert character variables to factors
data$State <- as.factor(data$State)
data$Sex <- as.factor(data$Sex)
data$Age.Group <- as.factor(data$Age.Group)

# Ensure column names match exactly
numeric_cols <- c("Bachelor.s.Degree.Holders", "Science.and.Engineering")
data[, numeric_cols] <- lapply(data[, numeric_cols], function(x) as.numeric(gsub(",", "", x)))

# Perform decision tree regression
model_tree <- rpart(Bachelor.s.Degree.Holders ~ Science.and.Engineering, data = data)

# Plot the decision tree
rpart.plot(model_tree)

# Predict and plot
data$pred_tree <- predict(model_tree)

ggplot(data, aes(x = Science.and.Engineering, y = Bachelor.s.Degree.Holders)) +
  geom_point() +
  geom_line(aes(y = pred_tree), color = "green") +
  labs(title = "Decision Tree Regression Analysis",
       x = "Science and Engineering Degree Holders",
       y = "Bachelor's Degree Holders")
