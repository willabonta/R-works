library(readxl)
library(ggplot2)
library(tidyverse)
DAfrica <- read_excel("/Users/willabonta/Desktop/DAfrica.xlsx")
view(DAfrica)
plot(AWH - log(GDP ))

detach(GDP1)

attach(DAfrica)

DAfrica %>% 
  select(Continent, Population, GDP ) %>% 
  filter(Population >= 15000000) %>% 
  group_by(Continent) %>% 
  summarise(AP= mean(Population), TGDP = median(GDP))

DAfrica %>% 
  select(Country, Population, GDP ) %>% 
  filter(Year == 2020  ) %>% 
  group_by(Country) %>% 
  summarise(AP= mean(Population), TGDP = median(GDP))
