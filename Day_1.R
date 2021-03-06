# Day 1
# Data, laminaria, statistical analuses
# 28 January 2020

# Loading packages
library(tidyverse)

laminaria <- read_csv("data/laminaria.csv")

## Viewing the data 

head(laminaria) # First 6 rows
tail(laminaria) # Last 6 rows
glimpse(laminaria)
view(laminaria) # OPens the data 
names(laminaria) # column names

# Tidyverse

lam_sub <- laminaria %>% # Tell R which dataframe we are using
  select(site, total_length) # Select only specific columns

lam_slice <- laminaria %>% 
  select(site, total_length) %>% # Select specific columns first
  slice(56:78)

lam_kom <- laminaria %>%
  filter(site == "Kommetjie")

##    %>% - Shift Cntrl M

laminaria %>% # Tell R which dataset to use
  filter(site == "Kommetjie") %>% # Filter out only records from Kommetjie
  nrow() # Count the number of remaining rows





