library(tidyverse)

density_func <- tibble(x = seq(-2, 2, 0.1)) %>% 
  mutate(dens = dnorm(x = x, mean = 0, sd = 1))

set.seed(0)
randomized_dots <- tibble(rnd = rnorm(n = 1000, mean = 0.4, sd = 1.1))

# Demonstrate by changing this:

num_points <- 50

ggplot(density_func, aes(x = x, y = dens)) + 
  geom_line() + 
  geom_density(data = randomized_dots[1:num_points,], aes(rnd), inherit.aes = F) + 
  geom_point(data = randomized_dots[1:num_points,], 
             aes(x = rnd, y = 0), alpha = 0.4, inherit.aes = F, size = 3)