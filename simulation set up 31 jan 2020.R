# 1. Generate theta

library(tidyverse)
library(faux)
library(psych)
library(lavaan)
library(mirt)

theta <- rnorm(200000, 0, 1)

# 2. Generate structural validity adjusted-theta

SVA_theta <- theta * 0.80 + sqrt((1 - 0.80^2)) * rnorm(200000, 0, 1)

cor(theta, SVA_theta)

# 3. Generate U*

Ustar1 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)
Ustar2 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)
Ustar3 <- SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)

cor(Ustar1, Ustar2)
n<-8
iterate <- map(1:n, ~SVA_theta * 0.50 + sqrt((1-0.50^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:n])
bind_rows(iterate)

iterate <- as.data.frame(iterate)



simulate_intconsis <- function(nitems, sva, lambda){
  theta <- rnorm(200000, 0, 1)

  SVA_theta <- theta * sva + sqrt((1 - sva^2)) * rnorm(200000, 0, 1)  
  
  iterate <- map(1:nitems, ~SVA_theta * lambda + sqrt((1-lambda^2)) * rnorm(200000, 0, 1)) %>% set_names(letters[1:nitems])
  bind_rows(iterate)
  
  iterate <- as.data.frame(iterate)
  
    
}


test1 <- simulate_intconsis(10, .8, .5)

#This code converts the data into 5-point likert-type data

prob_5cat   <- c(.1, .2, .4, .2, .1)
test2 <- test1 %>% transmute_all(~norm2likert(., prob = prob_5cat))

#This code dichotimizes the data

test3 <- test1 %>% transmute_all(~dplyr::if_else(. > 0, 1, 0))

alpha(test2)

omega(test2, plot = F, maxit = 10000)
