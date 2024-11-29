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