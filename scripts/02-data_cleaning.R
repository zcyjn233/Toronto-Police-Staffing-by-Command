#### Preamble ####
# Purpose: OpenDataToronto
# Author: Wei Wang
# Date: 24 September 2024 
# Contact: won.wang@mail.utoronto.ca
# License: MIT
# Any other information needed? nothing


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
data <- read.csv("data/raw_data/tpss_raw_data.csv")
cleaned_data <- data[,-c(1:2)]

# Alternatively, you can use this code to remove columns A and B
# cleaned_data <- data[, !(names(data) %in% c("A", "B"))]

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
