# Biostats day 1
# Amieroh Abrahams
# Chapter 2 and 3

# load in packages
library(tidyverse)
chicks <- as_tibble(ChickWeight)
head(chicks)
tail(chicks)
tail(chicks, n = 2)
colnames(chicks) # Col names. displaying variable names
summary(chicks)


dat1 <- c(23, 45, 23, 66, 13)
mean(dat1)

chicks %>% 
  summarise(mean_wt = mean(weight))

plt3 <- chicks %>%
  filter(Time == 21) %>% 
  ggplot(aes(x = Diet, y = weight)) +
  geom_boxplot(fill = "salmon") +
  geom_jitter(width = 0.05, fill = "white", col = "blue", shape = 21) +
  labs(y = "Chicken mass (g)") + 
  theme_pubr()







