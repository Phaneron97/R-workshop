# Exercise: Classification Using Support Vector Machine (SVM)

# Instructions:
# 1. Install and load necessary packages.
# 2. Read and prepare the dataset.
# 3. Create a binary target variable based on a threshold.
# 4. Train an SVM classification model.
# 5. Predict and evaluate the model.
# 6. Visualize the classification results.

# Step 1: Install and load necessary packages
install.packages("e1071")  # Install the e1071 package for SVM
library(ggplot2)           # Load ggplot2 for visualization
library(e1071)             # Load e1071 for SVM

# Step 2: Read and prepare the dataset
data <- read.csv("code/classification/data/Bachelor_Degrees_Majors.csv")

# Convert character variables to factors
data$State <- as.factor(data$State)
data$Sex <- as.factor(data$Sex)
data$Age.Group <- as.factor(data$Age.Group)

# Ensure column names match exactly
numeric_cols <- c("Bachelor.s.Degree.Holders", "Science.and.Engineering")
data[, numeric_cols] <- lapply(data[, numeric_cols], function(x) as.numeric(gsub(",", "", x)))

# Step 3: Create a binary target variable based on a threshold
threshold <- 100000  # Define a threshold for classification
data$High_Sci_Eng <- ifelse(data$Science.and.Engineering > threshold, "High", "Low")
data$High_Sci_Eng <- as.factor(data$High_Sci_Eng)

# Step 4: Train an SVM classification model

# Step 5: Predict and evaluate the model

# Step 6: Visualize the classification results

# Additional Exercise:
# - Experiment with different kernels for the SVM model (e.g., "polynomial", "radial").
# - Adjust the threshold for classification and observe how the model's performance changes.
# - Explore the effect of other features on the classification by including/excluding them from the model.
