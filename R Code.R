###################################
## The Importance of Reliability ##
###################################

## Loading Packages ##

library(MASS)
library(faux)
library(tidyverse)

## Simulating Data with a Pre-Specified Correlation ##

#code pulled from stackexchange here:
# https://stats.stackexchange.com/questions/83172/generate-two-variables-with-precise-pre-specified-correlation?noredirect=1&lq=1

data_80 = mvrnorm(n=200, mu=c(0, 0), Sigma=matrix(c(1, .8, .8, 1), nrow=2), empirical=TRUE)
X_80 = data_80[, 1]  # standard normal (mu=0, sd=1)
Y_80 = data_80[, 2]  # standard normal (mu=0, sd=1)

cor_test(X_80, Y_80)

## Converting Simulated Data to Likert-type Data ##

df_80 <- cbind(X_80, Y_80)

df_80 <- as_data_frame(df_80)

prob = c(.1, .2, .4, .2, .1)

df_80 <- df_80 %>% mutate(X_Ordinal = norm2likert(X_80, prob = prob),
                          Y_Ordinal = norm2likert(Y_80, prob = prob))

table(df_80$X_Ordinal)
table(df_80$Y_Ordinal)

## Plotting Data ##

df_80_plot <- df_80 %>% select(X_Ordinal, Y_Ordinal)

df_80_long <- df_80_plot %>% gather(label, key, X_Ordinal:Y_Ordinal)

ggplot(df_80_long, aes(x=key, color = label)) + geom_histogram(position = "identity")

## Determining 'Accurate' vs. 'Inaccurate' Data ##
# Let x.ordinal = "Truth" and y.ordinal = "Measured"
# Subtract y.ordinal from x.ordinal, called d. If d = -1, 0, or 1 then accurate. Otherwise, inaccurate. 

diff_80 <- df_80 %>% mutate(D = X_Ordinal - Y_Ordinal) 

diff_80_results <- diff_80 %>% count(D)

diff_80_results

# A tibble: 5 x 2
#      D     n
#1    -2     3
#2    -1    39
#3     0   112
#4     1    40
#5     2     6

#Based on the results, with a reliability of 0.80, (39 + 112 + 40) / 200 = 95.5% of the data can be considered
#accurate. For the remaining (3 + 6) / 200 = 4.5%, inaccurate.

#"Low" Reliability

data_50 = mvrnorm(n=200, mu=c(0, 0), Sigma=matrix(c(1, .5, .5, 1), nrow=2), empirical=TRUE)
X_50 = data_50[, 1]  # standard normal (mu=0, sd=1)
Y_50 = data_50[, 2]  # standard normal (mu=0, sd=1)

cor_test(X_50, Y_50)

## Converting Simulated Data to Likert-type Data ##

df_50 <- cbind(X_50, Y_50)

df_50 <- as_data_frame(df_50)

prob = c(.1, .2, .4, .2, .1)

df_50 <- df_50 %>% mutate(X_Ordinal = norm2likert(X_50, prob = prob),
                          Y_Ordinal = norm2likert(Y_50, prob = prob))

table(df_50$X_Ordinal)
table(df_50$Y_Ordinal)

## Plotting Data ##

df_50_plot <- df_50 %>% select(X_Ordinal, Y_Ordinal)

df_50_long <- df_50_plot %>% gather(label, key, X_Ordinal:Y_Ordinal)

ggplot(df_50_long, aes(x=key, color = label)) + geom_histogram(position = "identity")

## Determining 'Accurate' vs. 'Inaccurate' Data ##
# Let x.ordinal = "Truth" and y.ordinal = "Measured"
# Subtract y.ordinal from x.ordinal, called d. If d = -1, 0, or 1 then accurate. Otherwise, inaccurate. 

diff_50 <- df_50 %>% mutate(D = X_Ordinal - Y_Ordinal) 

diff_50_results <- diff_50 %>% count(D)

diff_50_results

# A tibble: 7 x 2
#      D     n
#1    -3     1
#2    -2    20
#3    -1    47
#4     0    67
#5     1    47
#6     2    14
#7     3     4

#Based on the results, with a reliability of 0.80, (47 + 67 + 47) / 200 = 80.5% of the data can be considered
#accurate. For the remaining (1 + 20 + 14 + 4) / 200 = 19.5%, inaccurate.
