## Loading Packages ##

install.packages("remotes")
remotes::install_github("debruine/faux")
library(MASS)
library(faux)
library(tidyverse)

## Writing Function ##

reliability_test <- function(n, r){
  set.seed(2019)
  data = mvrnorm(n=n, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
  X = data[, 1]  # standard normal (mu=0, sd=1)
  Y = data[, 2]  # standard normal (mu=0, sd=1)
  
  df <- cbind(X, Y)
  
  df <- as_tibble(df)
  
  prob = c(.1, .2, .4, .2, .1)
  
  df <- df %>% mutate(X_Ordinal = norm2likert(X, prob = prob),
                      Y_Ordinal = norm2likert(Y, prob = prob))
  
  diff <- df %>% mutate(D = X_Ordinal - Y_Ordinal) 
  
  diff_results <- diff %>% count(D)
  
  reliability_valid_results <- diff_results %>% filter(between(D, -1, 1)) 
  n <- 0
  reliability_valid <- reliability_valid_results %>% sum(n)/N
  
  reliability_notvalid_results <- diff_results %>% filter(!between(D, -1, 1))
  
  reliability_notvalid <- reliability_notvalid_results %>% sum(n)/N
  
  print(diff_results)
  sprintf("proportion of valid responses is: %g; proportion of invalid responses is: %g", reliability_valid, reliability_notvalid)
}

reliability_test(20000, .8)

N = 200
r = .8

data = mvrnorm(n=N, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
X = data[, 1]  # standard normal (mu=0, sd=1)
Y = data[, 2]  # standard normal (mu=0, sd=1)

df <- cbind(X, Y)

df <- as_tibble(df)

prob = c(.1, .2, .4, .2, .1)

df <- df %>% mutate(X_Ordinal = norm2likert(X, prob = prob),
                    Y_Ordinal = norm2likert(Y, prob = prob))

diff <- df %>% mutate(D = X_Ordinal - Y_Ordinal) 

diff_results <- diff %>% count(D)

print(diff_results)

reliability_valid_results <- diff_results %>% filter(between(D, -1, 1)) 
n <- 0
reliability_valid <- reliability_valid_results %>% sum(n)/N

reliability_notvalid_results <- diff_results %>% filter(!between(D, -1, 1))

reliability_notvalid <- reliability_notvalid_results %>% sum(n)/N