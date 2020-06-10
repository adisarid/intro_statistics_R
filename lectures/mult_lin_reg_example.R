# Coded example for manual multiple linear regression

library(tidyverse)

# In this example we illustrate manual computation of multiple linear regression

# The model using the lm function ----

lm(mpg ~ hp + wt, mtcars) %>% 
  summary()

# Now let's do this manually ----

X <- mtcars %>%  
  mutate(ones = 1) %>% 
  select(ones, hp, wt) %>% 
  as.matrix()

# The beta coefficients ----

XtX <- crossprod(X)  # same as t(X) %*% X

XtX_inv <- solve(XtX)  # Important! not the same as (XtX)^(-1)

beta <- XtX_inv %*% t(X) %*% mtcars$mpg

# We saw that \hat{\sigma^2}(X^tX)^{-1} is an estimate

# Residual sum of square

y_hat <- X %*% beta

e_i <- (mtcars$mpg - y_hat)

sigma_sq <- (e_i^2)/(32 - 3)  # df = 32 - (p + 1) = 32 - 2 - 1 = 29

# the sum of squared errors
sum(sigma_sq)

# the residual standard error
sqrt(sum(sigma_sq))

# The standard deviation of coefficients ----
sqrt(sum(sigma_sq) * diag(XtX_inv))
