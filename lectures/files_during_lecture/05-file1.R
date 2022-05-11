library(tidyverse)

wildlife_small <- read_csv("lectures/data/wildlife_impacts_small.csv", col_types = cols()) %>% 
  mutate(rounded_height = round(height/1000)) %>% 
  group_by(rounded_height) %>% 
  summarize(n = sum(n)) %>% 
  filter(!is.na(rounded_height))


wildlife_hist <- ggplot(wildlife_small, aes(x = rounded_height, y = n)) + 
  geom_col(fill = "darkorange", color = "black") + theme_bw() + xlab("Height [k feet]") + scale_y_log10()
wildlife_points <- ggplot(wildlife_small, aes(x = rounded_height, y = n)) + 
  geom_point() +
  theme_linedraw() + 
  scale_y_log10() +
  stat_smooth(method = "lm") + 
  xlab("Height [k feet]")
cowplot::plot_grid(wildlife_hist, wildlife_points)




wildlife_lm <- lm(formula = log(n) ~ rounded_height, data = wildlife_small)

ggplot(tibble(res = wildlife_lm$residuals),
       aes(sample = res)) + 
  geom_qq()



summary(wildlife_lm)
