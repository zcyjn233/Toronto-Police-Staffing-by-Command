#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read.csv("data/raw_data/tpss_raw_data.csv")
cleaned_data <- data[,-c(1:2)]

# Alternatively, you can use this code to remove columns A and B
# cleaned_data <- data[, !(names(data) %in% c("A", "B"))]

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
