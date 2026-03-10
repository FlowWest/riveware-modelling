library(tidyverse)
library(readxl)

# process historical data from KPOM
historical_dates <- read_excel("FlowWest_Model/data/Viewer_v11d for MST11b_DraftPA_Jan26.xlsm",
                               sheet="Historical_data", range="A12:A15413")
historical_ACanal_diversions <- read_excel("FlowWest_Model/data/Viewer_v11d for MST11b_DraftPA_Jan26.xlsm",
                              range = "N12:N15413", sheet="Historical_data") |> bind_cols(historical_dates)




