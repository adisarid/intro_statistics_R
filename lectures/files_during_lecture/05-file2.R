tibble(number = rnorm(150, mean = 2, sd = 5)) %>% 
  ggplot(aes(sample = number)) + 
  geom_qq()

tibble(number = rnorm(150, mean = 0, sd = 1)) %>% 
  ggplot(aes(x = number)) + 
  geom_density()
