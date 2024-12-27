# Load required libraries
library(ggplot2)
library(lubridate)

# Read the dataset (replace 'your_dataset.csv' with the path to your data file)
data <- read.csv('your_dataset.csv')

# Convert datetime column to Date type (assuming there is a datetime column)
data$datetime <- as.POSIXct(data$datetime)

# Plot 2: Time series of Global Active Power
ggplot(data, aes(x = datetime, y = Global_active_power)) +
  geom_line(color = "black") +
  labs(title = "Global Active Power Over Time", x = "Datetime", y = "Global Active Power (kilowatts)") +
  theme_minimal()
