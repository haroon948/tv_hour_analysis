pacman::p_load(tidyverse, here)

tv_watched <- gss_cat %>% 
  group_by(marital) %>% 
  filter(age>=30) %>% 
  summarise(mean_tv = mean(tvhours, na.rm= T)) %>% 
  ungroup()

tv_watched_plot <- ggplot(data = tv_watched,
       aes(x= mean_tv,
           fill = marital))+
  geom_histogram()

write_csv(tv_watched, here("tvHoursByMarital.csv"))

# write_csv(tv_watched_plot, here("tvWatchedPlot.pdf"))
