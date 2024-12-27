# Load required libraries
library(ggplot2)
library(lubridate)

# Read the dataset (replace 'your_dataset.csv' with the path to your data file)
data <- read.csv('your_dataset.csv')

# Convert datetime column to Date type (assuming there is a datetime column)
data$datetime <- as.POSIXct(data$datetime)

# Plot 1: Histogram of Global Active Power
ggplot(data, aes(x = Global_active_power)) +
  geom_histogram(binwidth = 0.1, fill = "red", color = "black") +
  labs(title = "Global Active Power", x = "Global Active Power (kilowatts)", y = "Frequency") +
  theme_minimal()
