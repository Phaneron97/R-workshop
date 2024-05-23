# Load necessary libraries
if (!require("ggplot2")) {
  install.packages("ggplot2")
  library(ggplot2)
}

# Set the working directory to the location of the script manually if needed
print("getwd()")
print(getwd()) # Uncomment to check the current working directory
setwd("D:/School/BDA_Minor/R-workshop/code/regression/linear") # Replace with your actual path to the script location

# Construct the relative path to the CSV file
data_path <- "../data/Bachelor_Degrees_Majors.csv"

# Print the constructed path for debugging
print(data_path)

# Check if the file exists
if (!file.exists(data_path)) {
  stop("File does not exist: ", data_path)
}

# Read the dataset
data <- read.csv(data_path)

# Print column names for debugging
print(colnames(data))

# Convert character variables to factors
data$State <- as.factor(data$State)
data$Sex <- as.factor(data$Sex)
data$Age.Group <- as.factor(data$Age.Group)

# Ensure column names match exactly
numeric_cols <- c("Bachelor.s.Degree.Holders", "Science.and.Engineering")
data[, numeric_cols] <- lapply(data[, numeric_cols], function(x) as.numeric(gsub(",", "", x)))

# Perform simple linear regression
model <- lm(Bachelor.s.Degree.Holders ~ Science.and.Engineering, data = data)

# Summary of the regression model
summary(model)

# Scatter plot with regression line
ggplot(data, aes(x = Science.and.Engineering, y = Bachelor.s.Degree.Holders)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(title = "Simple Linear Regression Analysis",
       x = "Science and Engineering Degree Holders",
       y = "Bachelor's Degree Holders")
