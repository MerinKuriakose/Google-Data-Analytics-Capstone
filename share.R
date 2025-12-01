# Histogram of daily steps
ggplot(daily_activity, aes(x=TotalSteps)) +
  geom_histogram(binwidth=1000, fill="green", color="black") +
  labs(title="Distribution of Daily Steps")
