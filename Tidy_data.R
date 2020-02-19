# Tidy Data
# 10th February 2020
# Amieroh Abrahams


# Libraries
library(tidyverse)
library(lubridate)
load("data/SACTN_mangled.RData")

SACTN2_tidy <- SACTN2 %>%
  gather(DEA, KZNSB, SAWS, key = "src", value = "temp")


# Spreading

SACTN3_tidy1 <- SACTN3 %>% 
  spread(key = var, value = val)


SACTN4a_tidy <- SACTN4a %>% 
  separate(col = index, into = c("site", "src"), sep = "/ ")


SACTN_tidy2 <- SACTN4a %>% 
  separate(col = index, into = c("site", "src"), sep = "/ ") %>% 
  mutate(day = lubridate::day(date),
         month = lubridate::month(date),
         year = lubridate::year(date))

# Tidier data

# Load the data from a .RData file
load("data/SACTNmonthly_v4.0.RData")

# Copy the data as a dataframe with a shorter name
SACTN <- SACTNmonthly_v4.0

# Remove the original
rm(SACTNmonthly_v4.0)


SACTN %>% 
  filter(site == "Amanzimtoti")


SACTN %>% 
  select(-date, site, src, temp)


SACTN %>% 
  mutate(kelvin = temp + 273.15)



SACTN %>% 
  group_by(site, src) %>% 
  summarise(mean_temp = round(mean(temp, na.rm = T))
  ) %>% 
  ungroup() %>% 
  ggplot(aes(x = mean_temp)) +
  geom_density(fill = "seagreen") +
  labs(x = "Temperature (°C)")








