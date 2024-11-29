df <- read.csv("25.csv")

x <- df$step_count # Dependent variable
y <- df$calories_burned# Independent variable

# Perform Spearman and Kendall correlation tests
cor.test(x, y, method = "spearman")
