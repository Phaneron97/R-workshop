# Install necessary package
install.packages("randomForest")

# Load necessary libraries
library(ggplot2)
library(randomForest)

# Read the dataset
data <- read.csv("code/classification/data/Bachelor_Degrees_Majors.csv")

# Convert character variables to factors
data$State <- as.factor(data$State)
data$Sex <- as.factor(data$Sex)
data$Age.Group <- as.factor(data$Age.Group)

# Ensure column names match exactly
numeric_cols <- c("Bachelor.s.Degree.Holders", "Science.and.Engineering")
data[, numeric_cols] <- lapply(data[, numeric_cols], function(x) as.numeric(gsub(",", "", x)))

# Create a binary target variable
threshold <- 100000  # Define a threshold for classification
data$High_Sci_Eng <- ifelse(data$Science.and.Engineering > threshold, "High", "Low")
data$High_Sci_Eng <- as.factor(data$High_Sci_Eng)

# Perform random forest classification
set.seed(123)  # Set seed for reproducibility
model_rf <- randomForest(High_Sci_Eng ~ Science.and.Engineering + State + Sex + Age.Group, data = data)

# Predict and create a confusion matrix
data$pred_rf <- predict(model_rf)
conf_matrix <- table(data$High_Sci_Eng, data$pred_rf)
print(conf_matrix)

# Visualize the classification results
ggplot(data, aes(x = Science.and.Engineering, y = Bachelor.s.Degree.Holders, color = High_Sci_Eng)) +
  geom_point() +
  labs(title = "Random Forest Classification Analysis",
       x = "Science and Engineering Degree Holders",
       y = "Bachelor's Degree Holders") +
  scale_color_manual(values = c("High" = "blue", "Low" = "red"))