#### Preamble ####
# Purpose: OpenDataToronto
# Author: Wei Wang
# Date: 24 September 2024 
# Contact: won.wang@mail.utoronto.ca
# License: MIT
# Any other information needed? nothing


#### Workspace setup ####
library(tidyverse)

#### Test simulate data ####

# Load the data
data <- read.csv("data/sim_data/sim_data.csv")

#Test if Category only contains 'UNIFORM' and 'CIVILIAN'
unique(data$Category)
all(unique(data$Category) %in% c("UNIFORM", "CIVILIAN"))

#Test if Type_of_Metric contains the word "Staffing"
all(grepl("Staffing", data$Type_of_Metric))


# Check if all values in the 'Count_' column are greater than 0
all(data$Count_ > 0)


