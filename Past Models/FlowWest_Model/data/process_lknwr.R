library(tidyverse)
library(dplyr)
raw_data <- read_csv("lknwr_area_cap_vol.csv") %>% 
  rename(
    "elevation_feet" = "Elev(feet)",
    "capacity_acre_ft" = "Cap(acre-ft)",
    "area_acres" = "Area(acres)",
    "lknwr_cell" = "...4"
  ) %>% glimpse()
