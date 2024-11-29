library(tidyverse)  # Initializing the tidyverse library

pdf("Visualization.pdf")  # Save the visualization to a PDF

df <- read.csv("25.csv")  # Reading the CSV file and storing the dataset in the df variable

x <- df$calories_burned # Independent variable
y <- df$step_count # Dependent variable

#scatter plot
plot(
  x, y,
  main = "Scatter plot showing the correlation between 
          step count and calories burned",
  xlab = "Calories burned (Cal)",
  ylab = "Step count (in thousands)",
  pch = 19,
  frame = TRUE
)

model <- lm(y ~ x, data = df) # Fitting a linear model to the cleaned data
abline(model, col = "blue")         # Adding the regression line

#histogram
h <- hist(
  df$step_count, # Dependent variable
  breaks = 35,
  main = "Histogram showing the frequency of step count",
  xlab = "Step Count (in thousands)",
  ylab = "Frequency",
  col = c("lightgreen"),
)

y <- df$step_count # Dependent variable

# Calculate statistics
dtMin <- min(y)   # Minimum value present in the data set
dtMax <- max(y)   # Maximum value present in the data set
dtMean <- mean(y) # Calculating the mean of the dependent variable
dtSd <- sd(y)     # Calculating the standard deviation

# Generate normal distribution line
x <- seq(dtMin, dtMax, 1) # Create a sequence from min to max
yn <- dnorm(x, mean = dtMean, sd = dtSd) 

# Scale normal distribution to match histogram
box.size <- diff(h$mids[1:2]) * length(y)
yn <- yn * box.size

# Add the normal distribution line
lines(x, yn, col = "blue")

dev.off()