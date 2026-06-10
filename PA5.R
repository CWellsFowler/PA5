# PA5.R
# Chatoya Wells-Fowler
# 06/14/2026
# Demonstrates cat() argument matching and CSV file processing

# Create the data frame
argmatch <- data.frame(
  type = c("Partial", "Positional", "Exact"),
  example = c(
    "cat('Hello','World',se='-')",
    "cat('Hello','World','-')",
    "cat('Hello','World',sep='-')"
  ),
  stringsAsFactors = FALSE
)

# Write to CSV file
write.csv(
  x = argmatch,
  file = "argmatch.csv",
  row.names = FALSE
)

# Delete from global environment
rm(argmatch)

# Read CSV file to recreate data frame
argmatch <- read.csv(
  file = "argmatch.csv",
  stringsAsFactors = FALSE
)

# Display the dataframe; use View for readability
View(argmatch)