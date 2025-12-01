# Load libraries
library(tidyverse)

# Import CSV files
daily_activity <- read_csv("dailyActivity_merged.csv")
sleep_data <- read_csv("sleepDay_merged.csv")
weight_data <- read_csv("weightLogInfo_merged.csv")

# Take a look at the daily_activity data.
head(daily_activity)

# Identify all the columns in the daily_activity data.
colnames(daily_activity)

# Take a look at the sleep_data data.
head(sleep_data)

# Identify all the columns in the sleep_data data.
colnames(sleep_data)

# Take a look at the weight_data data.
head(weight_data)

# Identify all the columns in the weight_data data.
colnames(weight_data)

# Inspect structure
glimpse(daily_activity)
summary(sleep_data)
