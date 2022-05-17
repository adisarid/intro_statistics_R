mtcars_lm <- lm(formula = mpg ~ disp, data = mtcars)

mtcars_lm$residuals
mtcars_lm$fitted.values

summary(mtcars_lm)

mtcars_new <- mtcars %>% 
  mutate(resid = mtcars_lm$residuals) %>% 
  mutate(prediction = mtcars_lm$fitted.values) 


ggplot(mtcars_new, aes(y = resid, x = disp)) + 
  geom_point()

ggplot(mtcars_new, aes(x = resid)) + 
  geom_density()

ggplot(mtcars_new, aes(sample = resid)) + 
  geom_qq()
