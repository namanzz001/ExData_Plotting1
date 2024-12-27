library(ggplot2)
library(lubridate)

# Read the dataset (replace 'your_dataset.csv' with the path to your data file)
data <- read.csv('your_dataset.csv')

# Convert datetime column to Date type (assuming there is a datetime column)
data$datetime <- as.POSIXct(data$datetime)

ggplot(data) +
  geom_line(aes(x = datetime, y = Sub_metering_1, color = "Sub_metering_1")) +
  geom_line(aes(x = datetime, y = Sub_metering_2, color = "Sub_metering_2")) +
  geom_line(aes(x = datetime, y = Sub_metering_3, color = "Sub_metering_3")) +
  labs(title = "Energy Sub Metering", x = "Datetime", y = "Energy sub metering") +
  scale_color_manual(values = c("black", "red", "blue")) +
  theme_minimal() +
  theme(legend.title = element_blank())
