pacman::p_load(tidyverse, here)

tv_watched <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv = mean(tvhours, na.rm= T)) %>% 
  ungroup()

ggplot(data = tv_watched,
       aes(x= mean_tv,
           fill = marital))+
  geom_histogram()
