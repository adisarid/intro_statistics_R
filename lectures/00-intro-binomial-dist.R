library(tidyverse)
tibble(Infected = 25:100, 
       Probability = dbinom(25:100, 300, 0.2)) %>% 
  mutate(color = if_else(Infected %in% c(40, 50, 55), T, F)) %>% 
  ggplot(aes(x = Infected, y = Probability, fill = color)) + 
  scale_fill_manual(values = c("TRUE" = saridr::sarid_colors$light_blue_gradient, "FALSE" = "grey")) +
  geom_col() + 
  guides(fill = F) + 
  scale_y_continuous(labels = scales::percent_format(1)) + 
  ggtitle("Density function n=300, p=0.2")

tibble(Infected = 25:100, 
       Probability = pbinom(25:100, 300, 0.2)) %>% 
  mutate(label = if_else(Infected %in% c(40, 50, 55), glue::glue("{round(Probability*100,2)}%"), NA_character_)) %>% 
  ggplot(aes(x = Infected, y = Probability)) + 
  geom_line() + 
  geom_label(aes(label = label)) +
  guides(fill = F) + 
  scale_y_continuous(labels = scales::percent_format(1)) + 
  ggtitle("Distribution function n=300, p=0.2")
