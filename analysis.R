# Average steps per day
daily_activity %>% 
  summarise(mean_steps = mean(TotalSteps))

# Relationship between steps & calories
ggplot(daily_activity, aes(x=TotalSteps, y=Calories)) +
  geom_point() + geom_smooth(method="lm")

ggplot(daily_activity, aes(x=TotalSteps, y=Calories)) +
  geom_point(alpha=0.5) +
  geom_smooth(method="lm", color="blue") +
  labs(title="Steps vs Calories Burned")

# Sleep vs activity
merged_data <- merge(daily_activity, sleep_data, by="Id")
ggplot(merged_data, aes(x=TotalMinutesAsleep, y=TotalSteps)) +
  geom_point()

merged_data <- merge(daily_activity, sleep_data, by="Id")
ggplot(merged_data, aes(x=TotalMinutesAsleep, y=TotalSteps)) +
  geom_point(alpha=0.5, color="purple") +
  labs(title="Sleep Duration vs Steps")
