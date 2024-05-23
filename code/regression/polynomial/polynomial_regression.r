
library(ggplot2)

# Read the dataset
data <- read.csv("../data/Bachelor_Degrees_Majors.csv")

# Convert character variables to factors
data$State <- as.factor(data$State)
data$Sex <- as.factor(data$Sex)
data$Age.Group <- as.factor(data$Age.Group)

# Ensure column names match exactly

# What columns do you want to do regression on? insert code below
numeric_cols <- c("Bachelor.s.Degree.Holders", "Science.and.Engineering")
data[, numeric_cols] <- lapply(data[, numeric_cols], function(x) as.numeric(gsub(",", "", x)))

# Perform polynomial regression (degree 2)
model_poly <- lm(Bachelor.s.Degree.Holders ~ poly(Science.and.Engineering, 2), data = data)

# Summary of the regression model
summary(model_poly)

# Scatter plot with regression line
ggplot(data, aes(x = Science.and.Engineering, y = Bachelor.s.Degree.Holders)) +
  geom_point() +
  stat_smooth(method = "lm", formula = y ~ poly(x, 2), se = FALSE) +
  labs(title = "Polynomial Regression Analysis",
       x = "Science and Engineering Degree Holders",
       y = "Bachelor's Degree Holders")
