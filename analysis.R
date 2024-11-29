df <- read.csv("25.csv")

x <- df$step_count # Dependent variable
y <- df$calories_burned# Independent variable

# Perform Spearman and Kendall correlation tests
cor.test(y, x, method = "spearman")
cor.test(y, x, method = "kendall")