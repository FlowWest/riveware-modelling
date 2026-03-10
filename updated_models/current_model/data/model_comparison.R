library(ggplot2)
library(tidyverse)
library(plotly)

data <- read_csv("output_comparison.csv")
ukl_outflow <- data %>% 
  pivot_longer(
    cols=c(WRIMS_C1_Flow, Riverware_Klamath_Outflow),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>%
  filter(date >as.Date("1981-01-01")) %>% 
  filter(date < as.Date("1982-01-01")) %>% 
  select(-Date) %>%  glimpse()
  
ggplot(ukl_outflow, aes(x = date, y = value, color = model)) +
  geom_line(linewidth = 0.8) +
  scale_x_date(date_breaks = "2 month") +
  labs(
    x = "Date",
    y = "Value",
    color = "Model",
    title = "WRIMS C1 Flow vs Riverware Upper Klamath Lake Outflow"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )
  out

keno_outflow <- data %>% 
  pivot_longer(
    cols=c(WRIMS_C15_Flow, Riverware_Keno_Outflow),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(keno_outflow, aes(x = date, y = value, color = model)) +
  geom_line(linewidth = 0.8) +
  scale_x_date(date_breaks = "2 year", 
               date_labels = "%Y") +
  labs(
    x = "Date",
    y = "Value",
    color = "Model",
    title = "Daily Time Series Comparison: WRIMS C15 Flow vs Riverware Keno Outflow"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1)
  )

cum_ss_ukl_ag_delv <- data %>% 
  pivot_longer(
    cols=c(WRIMS_cum_ag_UKL_SS_Delivery, Riverware_cum_ag_UKL_SS_Delivery),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(cum_ss_ukl_ag_delv, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "Cumulative delivery", title = "Cumulative delivery by year") +
  theme_minimal()

project_supply <- data %>% 
  pivot_longer(
    cols=c(WRIMS_Supply, Riverware_Project_Supply_Accounting),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(project_supply, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "Project Supply (acre-ft)", title = "Project Supply By Year") +
  theme_minimal()

ops_index <- data %>% 
  pivot_longer(
    cols=c(WRIMS_OPS_Index, Riverware_OPS_Index),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(ops_index, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "Ops Index", title = "Daily Ops Index") +
  theme_minimal()

ukl_shadow <- data %>% 
  pivot_longer(
    cols=c(WRIMS_Shadow_Elev,Riverware_Shadow_Elev),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(ukl_shadow, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "Elevation (ft)", title = "UKL Shadow Elevation") +
  theme_minimal()

ukl_elev <- data %>% 
  pivot_longer(
    cols=c(WRIMS_UKL_Pool_Elevation,Riverware_UKL_Pool_Elevation),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  filter(date >as.Date("1980-01-01")) %>% 
  filter(date < as.Date("1995-01-01")) %>% 
  select(-Date) %>% glimpse()

ggplot(ukl_elev, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "Elevation (ft)", title = "UKL Elevation") +
  theme_minimal()

ffa <- data %>% 
  pivot_longer(
    cols=c(WRIMS_FFA,Riverware_FFA),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(ffa, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "ffa acre-ft", title = "FFA Storage") +
  theme_minimal()

dpsa <- data %>% 
  pivot_longer(
    cols=c(WRIMS_UKL_PRJ_CREDIT,Riverware_DPSA),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>% 
  select(-Date) %>% glimpse()

ggplot(dpsa, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "dpsa acre-ft", title = "Deferred Project Supply Account") +
  theme_minimal()

ffa_inc <- data %>% 
  pivot_longer(
    cols=c(WRIMS_FFA_INC,Riverware_FFA_Inc),
    names_to="model",
    values_to = "value"
  ) %>% mutate(date=as.Date(Date, format="%d%b%Y")) %>%
  filter(date >as.Date("1981-01-01")) %>% 
  filter(date < as.Date("1982-01-01")) %>% 
  select(-Date) %>% glimpse()

ggplot(ffa_inc, aes(x = date, y = value, color = model)) +
  geom_line(alpha = 0.8) +
  labs(x = "Day of Year", y = "cfs", title = "FFA Inc") +
  theme_minimal()
