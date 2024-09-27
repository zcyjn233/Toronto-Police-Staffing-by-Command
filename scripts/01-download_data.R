#### Preamble ####
# Purpose: OpenDataToronto
# Author: Wei Wang
# Date: 24 September 2024 
# Contact: won.wang@mail.utoronto.ca
# License: MIT
# Any other information needed? nothing


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# [...ADD CODE HERE TO DOWNLOAD...]
# Retrieve a list of all available data packages from the OpenDataToronto portal
packages <- list_packages(500)
# Display the list of available packages
packages
tpss_packages <- search_packages("Toronto Police Staffing by Command")
tpss_packages
# Retrieve a list of all resources (datasets) available within the found package
tpss_resources <- tpss_packages %>%
  list_package_resources()
# Display the list of resources available in the "Marriage Licence Statistics" package
tpss_resources

# Download the .csv dataset
tpss_statistics <- tpss_resources[2,] %>%
  get_resource()


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(tpss_statistics, "data/raw_data/tpss_raw_data.csv") 

         
