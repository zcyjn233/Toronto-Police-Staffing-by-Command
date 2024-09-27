# Load necessary libraries
library(dplyr)

# Set a seed for reproducibility
set.seed(123)

# Define possible values for each column
years <- c(2019, 2020, 2021)
types_of_metric <- c("Approved Staffing", "Actual Staffing")
commands <- c("Priority Response Command", "Specialized Operations Command", 
              "Toronto Police Services Board", "Centralized Service Charges")
categories <- c("UNIFORM", "CIVILIAN")

# Simulate a dataset
simulated_data <- data.frame(
  X_id = 1:100, # 100 unique IDs
  Year = sample(years, 100, replace = TRUE),
  Type_of_Metric = sample(types_of_metric, 100, replace = TRUE),
  Command = sample(commands, 100, replace = TRUE),
  Category = sample(categories, 100, replace = TRUE),
  Count_ = round(runif(100, min = 5, max = 2000), 1) # Simulated counts between 5 and 2000
)

# Display the first few rows of the simulated data
head(simulated_data)


write.csv(simulated_data, "data/sim_data/sim_data.csv")
