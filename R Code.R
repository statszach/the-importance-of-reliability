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

samples = 200
r = 0.83

data = mvrnorm(n=samples, mu=c(0, 0), Sigma=matrix(c(1, r, r, 1), nrow=2), empirical=TRUE)
X = data[, 1]  # standard normal (mu=0, sd=1)
Y = data[, 2]  # standard normal (mu=0, sd=1)

cor.test(X, Y)

## Converting Simulated Data to Likert-type Data ##

df <- cbind(X, Y)

df <- as.data.frame(df)

prob = c(.1, .2, .4, .2, .1)

df$x.ordinal <- norm2likert(df$X, prob = prob, mu = 0, sd = 1)
df$y.ordinal <- norm2likert(df$Y, prob = prob, mu = 0, sd = 1)

table(df$x.ordinal)
table(df$y.ordinal)

## Plotting Data ##

df.plot <- df %>% select(x.ordinal, y.ordinal)

df.long <- df.plot %>% gather(label, key, x.ordinal:y.ordinal)

ggplot(df.long, aes(x=key, color = label)) + geom_histogram(position = "identity")

## Determining 'Accurate' vs. 'Inaccurate' Data ##
# Let x.ordinal = "Truth" and y.ordinal = "Measured"
# Subtract y.ordinal from x.ordinal, called d. If d = -1, 0, or 1 then accurate. Otherwise, inaccurate. 

diff <- df %>% mutate(d = x.ordinal - y.ordinal)

table(diff$d)

# -2  -1   0   1   2 
# 5  37 107  47   4 

#Based on the results, with a reliability of 0.83, (37 + 107 + 47) / 200 = 95.5% of the data can be considered
#accurate. For the remaining (5 + 4) / 200 = 4.5%, inaccurate.
