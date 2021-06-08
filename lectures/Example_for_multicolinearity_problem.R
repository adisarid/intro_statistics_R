set.seed(42)
ex1 <- tibble(x1 = runif(100)) %>% 
  mutate(y = 5 + 3*x1 + rnorm(100, mean = 0, sd = 0.05),
         x2 = 2*x1 + rnorm(100, mean = 0, sd = 0.01))

ex1 %>% 
  cor()

summary(lm(y ~ x1, ex1))
summary(lm(y ~ x2, ex1))
summary(lm(y ~ x1 + x2, ex1))
