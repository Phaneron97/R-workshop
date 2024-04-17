# Workshop on Interactive Teaching Methods in Contemporary Higher Education Using R

# Introduction
cat("Welcome to the Workshop on Interactive Teaching Methods in Contemporary Higher Education Using R!\n")
cat("Today, we'll explore how to incorporate interactive teaching methods into the learning process using R.\n\n")

# Abstract
abstract <- "The main strategy of modern education should focus on the student's independent activity, the organization of self-learning environments and experimental and practical training, where students have a choice of actions and can use initiative—as well as flexible training programs where students can work in a comfortable rhythm. Today, we should talk about the use of interactive methods of training, which encourage interest in the profession; promote the efficient acquisition of training material; form patterns of conduct; provide high motivation, strength, knowledge, team spirit and freedom of expression; and most importantly, contribute to the complex competences of future specialists."
cat("Abstract:\n", abstract, "\n\n")

# Keywords
keywords <- c("Teaching method", "Interactive method", "Professional competence")
cat("Keywords:", paste(keywords, collapse = ", "), "\n\n")

# Minimum Working Example (MWE)
mwe_description <- "A Minimal Working Example (MWE) will be demonstrated to illustrate how to implement interactive teaching methods in R."
cat("Minimum Working Example (MWE):\n", mwe_description, "\n\n")

# Define MWE function
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Return NA if the vector is empty
  } else {
    return(mean(x))  # Otherwise, calculate and return the mean
  }
}

# Generate sample data
data <- c(1, 2, 3, 4, 5)

# Calculate mean
mean_result <- calculate_mean(data)
cat("Mean of the data:", mean_result, "\n")

# Generate a plot
png("example_plot.png", width = 800, height = 600)
plot(data, type = "o", main = "Example Plot", xlab = "Index", ylab = "Value")
dev.off()

# Conclusion
conclusion <- "Active learning methods modify the role of the teacher from the translator of information to the organizer and coordinator of the educational process and make it possible to form complex competences in future professional specialties via student activities that manifest as closely as possible the content of professional work."
cat("\nConclusion:\n", conclusion, "\n\n")

# Thank participants
cat("Thank you for attending the workshop!\n")
