library(tidyverse)

ggplot(data = data.frame(state.x77), aes(x = HS.Grad, y = Income)) + 
  geom_point()

newx.77 <- state.x77 %>% 
  data.frame() %>% 
  mutate(income_fct = cut(Income, 2),
         hs_grad_fct = cut(HS.Grad, 2))

country_name_code <- read_csv("c:/temp/country_code.csv", col_names = c("country", "code")) %>% 
  distinct(country, code)

country_vote <- read_csv("c:/temp/is_republican.csv", 
                         col_names = c("code", "is_rep"),
                         skip = 1) %>% 
  mutate(is_rep = !is.na(is_rep)) %>% 
  left_join(country_name_code)

x.77_voting_pattern <- newx.77 %>% 
  mutate(country = rownames(state.x77)) %>% 
  left_join(country_vote)
  

chisq.test(x = newx.77$income_fct, y = newx.77$hs_grad_fct,
           simulate.p.value = F)

t.test(formula = HS.Grad ~ is_rep, data = x.77_voting_pattern)
