# How many unique participants are there in each dataframe?
# It looks like there may be more participants in the daily activity
# dataset than the sleep dataset.
n_distinct(daily_activity$Id)
n_distinct(sleep_data$Id)


# Remove duplicates
sleep_data <- sleep_data %>% distinct()

# Handle missing values
weight_data <- weight_data %>% drop_na()

# Convert date formats
daily_activity <- daily_activity %>%
  mutate(ActivityDate = as.Date(ActivityDate, format="%m/%d/%Y"))