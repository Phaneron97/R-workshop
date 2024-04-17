# Define a simple function to calculate the mean of a numeric vector
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Return NA if the vector is empty
  } else {
    return(mean(x))  # Otherwise, calculate and return the mean
  }
}

# Example usage:
data <- c(1, 2, 3, 4, 5)
result <- calculate_mean(data)
print(paste("Mean of the data:", result))

# Generate a plot to visualize the data
plot(data, type = "o", main = "Example Plot", xlab = "Index", ylab = "Value")

# Save the plot as a PNG file
png("example_plot.png", width = 800, height = 600)
plot(data, type = "o", main = "Example Plot", xlab = "Index", ylab = "Value")
dev.off()