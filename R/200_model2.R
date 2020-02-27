# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

# Model 1 contains the results for the internal consistency omega/alpha
set.seed(2212020)
#Likert Norm
#SV = .9
i5s9l9_ln <- simulate_intconsis_likertnorm(5, .9, .9)
i5s9l8_ln <- simulate_intconsis_likertnorm(5, .9, .8)
i5s9l7_ln <- simulate_intconsis_likertnorm(5, .9, .7)
i5s9l6_ln <- simulate_intconsis_likertnorm(5, .9, .6)
i5s9l5_ln <- simulate_intconsis_likertnorm(5, .9, .5)

i5s9_ln <- rbind(i5s9l9_ln, i5s9l8_ln, i5s9l7_ln, i5s9l6_ln, i5s9l5_ln)
i5s9_ln <- as.tibble(i5s9_ln)
i5s9_ln <- i5s9_ln %>% mutate(condition = c("s9l9_ln", "s9l8_ln", "s9l7_ln", "s9l6_ln", "s9l5_ln"),
                              nitems = rep(5, 1))

i10s9l9_ln <- simulate_intconsis_likertnorm(10, .9, .9)
i10s9l8_ln <- simulate_intconsis_likertnorm(10, .9, .8)
i10s9l7_ln <- simulate_intconsis_likertnorm(10, .9, .7)
i10s9l6_ln <- simulate_intconsis_likertnorm(10, .9, .6)
i10s9l5_ln <- simulate_intconsis_likertnorm(10, .9, .5)

i10s9_ln <- rbind(i10s9l9_ln, i10s9l8_ln, i10s9l7_ln, i10s9l6_ln, i10s9l5_ln)
i10s9_ln <- as.tibble(i10s9_ln)
i10s9_ln <- i10s9_ln %>% mutate(condition = c("s9l9_ln", "s9l8_ln", "s9l7_ln", "s9l6_ln", "s9l5_ln"),
                                nitems = rep(10, 1))

i15s9l9_ln <- simulate_intconsis_likertnorm(15, .9, .9)
i15s9l8_ln <- simulate_intconsis_likertnorm(15, .9, .8)
i15s9l7_ln <- simulate_intconsis_likertnorm(15, .9, .7)
i15s9l6_ln <- simulate_intconsis_likertnorm(15, .9, .6)
i15s9l5_ln <- simulate_intconsis_likertnorm(15, .9, .5)

i15s9_ln <- rbind(i15s9l9_ln, i15s9l8_ln, i15s9l7_ln, i15s9l6_ln, i15s9l5_ln)
i15s9_ln <- as.tibble(i15s9_ln)
i15s9_ln <- i15s9_ln %>% mutate(condition = c("s9l9_ln", "s9l8_ln", "s9l7_ln", "s9l6_ln", "s9l5_ln"),
                                nitems = rep(15, 1))

i20s9l9_ln <- simulate_intconsis_likertnorm(20, .9, .9)
i20s9l8_ln <- simulate_intconsis_likertnorm(20, .9, .8)
i20s9l7_ln <- simulate_intconsis_likertnorm(20, .9, .7)
i20s9l6_ln <- simulate_intconsis_likertnorm(20, .9, .6)
i20s9l5_ln <- simulate_intconsis_likertnorm(20, .9, .5)

i20s9_ln <- rbind(i20s9l9_ln, i20s9l8_ln, i20s9l7_ln, i20s9l6_ln, i20s9l5_ln)
i20s9_ln <- as.tibble(i20s9_ln)
i20s9_ln <- i20s9_ln %>% mutate(condition = c("s9l9_ln", "s9l8_ln", "s9l7_ln", "s9l6_ln", "s9l5_ln"),
                                nitems = rep(20, 1))

i25s9l9_ln <- simulate_intconsis_likertnorm(25, .9, .9)
i25s9l8_ln <- simulate_intconsis_likertnorm(25, .9, .8)
i25s9l7_ln <- simulate_intconsis_likertnorm(25, .9, .7)
i25s9l6_ln <- simulate_intconsis_likertnorm(25, .9, .6)
i25s9l5_ln <- simulate_intconsis_likertnorm(25, .9, .5)

i25s9_ln <- rbind(i25s9l9_ln, i25s9l8_ln, i25s9l7_ln, i25s9l6_ln, i25s9l5_ln)
i25s9_ln <- as.tibble(i25s9_ln)
i25s9_ln <- i25s9_ln %>% mutate(condition = c("s9l9_ln", "s9l8_ln", "s9l7_ln", "s9l6_ln", "s9l5_ln"),
                                nitems = rep(25, 1))

s9_ln <- rbind(i5s9_ln, i10s9_ln, i15s9_ln, i20s9_ln, i25s9_ln)

#SV = .8

i5s8l9_ln <- simulate_intconsis_likertnorm(5, .8, .9)
i5s8l8_ln <- simulate_intconsis_likertnorm(5, .8, .8)
i5s8l7_ln <- simulate_intconsis_likertnorm(5, .8, .7)
i5s8l6_ln <- simulate_intconsis_likertnorm(5, .8, .6)
i5s8l5_ln <- simulate_intconsis_likertnorm(5, .8, .5)

i5s8_ln <- rbind(i5s8l9_ln, i5s8l8_ln, i5s8l7_ln, i5s8l6_ln, i5s8l5_ln)
i5s8_ln <- as.tibble(i5s8_ln)
i5s8_ln <- i5s8_ln %>% mutate(condition = c("s8l9_ln", "s8l8_ln", "s8l7_ln", "s8l6_ln", "s8l5_ln"),
                              nitems = rep(5, 1))

i10s8l9_ln <- simulate_intconsis_likertnorm(10, .8, .9)
i10s8l8_ln <- simulate_intconsis_likertnorm(10, .8, .8)
i10s8l7_ln <- simulate_intconsis_likertnorm(10, .8, .7)
i10s8l6_ln <- simulate_intconsis_likertnorm(10, .8, .6)
i10s8l5_ln <- simulate_intconsis_likertnorm(10, .8, .5)

i10s8_ln <- rbind(i10s8l9_ln, i10s8l8_ln, i10s8l7_ln, i10s8l6_ln, i10s8l5_ln)
i10s8_ln <- as.tibble(i10s8_ln)
i10s8_ln <- i10s8_ln %>% mutate(condition = c("s8l9_ln", "s8l8_ln", "s8l7_ln", "s8l6_ln", "s8l5_ln"),
                                nitems = rep(10, 1))

i15s8l9_ln <- simulate_intconsis_likertnorm(15, .8, .9)
i15s8l8_ln <- simulate_intconsis_likertnorm(15, .8, .8)
i15s8l7_ln <- simulate_intconsis_likertnorm(15, .8, .7)
i15s8l6_ln <- simulate_intconsis_likertnorm(15, .8, .6)
i15s8l5_ln <- simulate_intconsis_likertnorm(15, .8, .5)

i15s8_ln <- rbind(i15s8l9_ln, i15s8l8_ln, i15s8l7_ln, i15s8l6_ln, i15s8l5_ln)
i15s8_ln <- as.tibble(i15s8_ln)
i15s8_ln <- i15s8_ln %>% mutate(condition = c("s8l9_ln", "s8l8_ln", "s8l7_ln", "s8l6_ln", "s8l5_ln"),
                                nitems = rep(15, 1))

i20s8l9_ln <- simulate_intconsis_likertnorm(20, .8, .9)
i20s8l8_ln <- simulate_intconsis_likertnorm(20, .8, .8)
i20s8l7_ln <- simulate_intconsis_likertnorm(20, .8, .7)
i20s8l6_ln <- simulate_intconsis_likertnorm(20, .8, .6)
i20s8l5_ln <- simulate_intconsis_likertnorm(20, .8, .5)

i20s8_ln <- rbind(i20s8l9_ln, i20s8l8_ln, i20s8l7_ln, i20s8l6_ln, i20s8l5_ln)
i20s8_ln <- as.tibble(i20s8_ln)
i20s8_ln <- i20s8_ln %>% mutate(condition = c("s8l9_ln", "s8l8_ln", "s8l7_ln", "s8l6_ln", "s8l5_ln"),
                                nitems = rep(20, 1))

i25s8l9_ln <- simulate_intconsis_likertnorm(25, .8, .9)
i25s8l8_ln <- simulate_intconsis_likertnorm(25, .8, .8)
i25s8l7_ln <- simulate_intconsis_likertnorm(25, .8, .7)
i25s8l6_ln <- simulate_intconsis_likertnorm(25, .8, .6)
i25s8l5_ln <- simulate_intconsis_likertnorm(25, .8, .5)

i25s8_ln <- rbind(i25s8l9_ln, i25s8l8_ln, i25s8l7_ln, i25s8l6_ln, i25s8l5_ln)
i25s8_ln <- as.tibble(i25s8_ln)
i25s8_ln <- i25s8_ln %>% mutate(condition = c("s8l9_ln", "s8l8_ln", "s8l7_ln", "s8l6_ln", "s8l5_ln"),
                                nitems = rep(25, 1))

#SV = .7

i5s7l9_ln <- simulate_intconsis_likertnorm(5, .7, .9)
i5s7l8_ln <- simulate_intconsis_likertnorm(5, .7, .8)
i5s7l7_ln <- simulate_intconsis_likertnorm(5, .7, .7)
i5s7l6_ln <- simulate_intconsis_likertnorm(5, .7, .6)
i5s7l5_ln <- simulate_intconsis_likertnorm(5, .7, .5)

i5s7_ln <- rbind(i5s7l9_ln, i5s7l8_ln, i5s7l7_ln, i5s7l6_ln, i5s7l5_ln)
i5s7_ln <- as.tibble(i5s7_ln)
i5s7_ln <- i5s7_ln %>% mutate(condition = c("s7l9_ln", "s7l8_ln", "s7l7_ln", "s7l6_ln", "s7l5_ln"),
                              nitems = rep(5, 1))

i10s7l9_ln <- simulate_intconsis_likertnorm(10, .7, .9)
i10s7l8_ln <- simulate_intconsis_likertnorm(10, .7, .8)
i10s7l7_ln <- simulate_intconsis_likertnorm(10, .7, .7)
i10s7l6_ln <- simulate_intconsis_likertnorm(10, .7, .6)
i10s7l5_ln <- simulate_intconsis_likertnorm(10, .7, .5)

i10s7_ln <- rbind(i10s7l9_ln, i10s7l8_ln, i10s7l7_ln, i10s7l6_ln, i10s7l5_ln)
i10s7_ln <- as.tibble(i10s7_ln)
i10s7_ln <- i10s7_ln %>% mutate(condition = c("s7l9_ln", "s7l8_ln", "s7l7_ln", "s7l6_ln", "s7l5_ln"),
                                nitems = rep(10, 1))

i15s7l9_ln <- simulate_intconsis_likertnorm(15, .7, .9)
i15s7l8_ln <- simulate_intconsis_likertnorm(15, .7, .8)
i15s7l7_ln <- simulate_intconsis_likertnorm(15, .7, .7)
i15s7l6_ln <- simulate_intconsis_likertnorm(15, .7, .6)
i15s7l5_ln <- simulate_intconsis_likertnorm(15, .7, .5)

i15s7_ln <- rbind(i15s7l9_ln, i15s7l8_ln, i15s7l7_ln, i15s7l6_ln, i15s7l5_ln)
i15s7_ln <- as.tibble(i15s7_ln)
i15s7_ln <- i15s7_ln %>% mutate(condition = c("s7l9_ln", "s7l8_ln", "s7l7_ln", "s7l6_ln", "s7l5_ln"),
                                nitems = rep(15, 1))

i20s7l9_ln <- simulate_intconsis_likertnorm(20, .7, .9)
i20s7l8_ln <- simulate_intconsis_likertnorm(20, .7, .8)
i20s7l7_ln <- simulate_intconsis_likertnorm(20, .7, .7)
i20s7l6_ln <- simulate_intconsis_likertnorm(20, .7, .6)
i20s7l5_ln <- simulate_intconsis_likertnorm(20, .7, .5)

i20s7_ln <- rbind(i20s7l9_ln, i20s7l8_ln, i20s7l7_ln, i20s7l6_ln, i20s7l5_ln)
i20s7_ln <- as.tibble(i20s7_ln)
i20s7_ln <- i20s7_ln %>% mutate(condition = c("s7l9_ln", "s7l8_ln", "s7l7_ln", "s7l6_ln", "s7l5_ln"),
                                nitems = rep(20, 1))

i25s7l9_ln <- simulate_intconsis_likertnorm(25, .7, .9)
i25s7l8_ln <- simulate_intconsis_likertnorm(25, .7, .8)
i25s7l7_ln <- simulate_intconsis_likertnorm(25, .7, .7)
i25s7l6_ln <- simulate_intconsis_likertnorm(25, .7, .6)
i25s7l5_ln <- simulate_intconsis_likertnorm(25, .7, .5)

i25s7_ln <- rbind(i25s7l9_ln, i25s7l8_ln, i25s7l7_ln, i25s7l6_ln, i25s7l5_ln)
i25s7_ln <- as.tibble(i25s7_ln)
i25s7_ln <- i25s7_ln %>% mutate(condition = c("s7l9_ln", "s7l8_ln", "s7l7_ln", "s7l6_ln", "s7l5_ln"),
                                nitems = rep(25, 1))


#Likert Skew
#SV = .9
i5s9l9_ls <- simulate_intconsis_likertskew(5, .9, .9)
i5s9l8_ls <- simulate_intconsis_likertskew(5, .9, .8)
i5s9l7_ls <- simulate_intconsis_likertskew(5, .9, .7)
i5s9l6_ls <- simulate_intconsis_likertskew(5, .9, .6)
i5s9l5_ls <- simulate_intconsis_likertskew(5, .9, .5)

i5s9_ls <- rbind(i5s9l9_ls, i5s9l8_ls, i5s9l7_ls, i5s9l6_ls, i5s9l5_ls)
i5s9_ls <- as.tibble(i5s9_ls)
i5s9_ls <- i5s9_ls %>% mutate(condition = c("s9l9_ls", "s9l8_ls", "s9l7_ls", "s9l6_ls", "s9l5_ls"),
                              nitems = rep(5, 1))

i10s9l9_ls <- simulate_intconsis_likertskew(10, .9, .9)
i10s9l8_ls <- simulate_intconsis_likertskew(10, .9, .8)
i10s9l7_ls <- simulate_intconsis_likertskew(10, .9, .7)
i10s9l6_ls <- simulate_intconsis_likertskew(10, .9, .6)
i10s9l5_ls <- simulate_intconsis_likertskew(10, .9, .5)

i10s9_ls <- rbind(i10s9l9_ls, i10s9l8_ls, i10s9l7_ls, i10s9l6_ls, i10s9l5_ls)
i10s9_ls <- as.tibble(i10s9_ls)
i10s9_ls <- i10s9_ls %>% mutate(condition = c("s9l9_ls", "s9l8_ls", "s9l7_ls", "s9l6_ls", "s9l5_ls"),
                                nitems = rep(10, 1))

i15s9l9_ls <- simulate_intconsis_likertskew(15, .9, .9)
i15s9l8_ls <- simulate_intconsis_likertskew(15, .9, .8)
i15s9l7_ls <- simulate_intconsis_likertskew(15, .9, .7)
i15s9l6_ls <- simulate_intconsis_likertskew(15, .9, .6)
i15s9l5_ls <- simulate_intconsis_likertskew(15, .9, .5)

i15s9_ls <- rbind(i15s9l9_ls, i15s9l8_ls, i15s9l7_ls, i15s9l6_ls, i15s9l5_ls)
i15s9_ls <- as.tibble(i15s9_ls)
i15s9_ls <- i15s9_ls %>% mutate(condition = c("s9l9_ls", "s9l8_ls", "s9l7_ls", "s9l6_ls", "s9l5_ls"),
                                nitems = rep(15, 1))

i20s9l9_ls <- simulate_intconsis_likertskew(20, .9, .9)
i20s9l8_ls <- simulate_intconsis_likertskew(20, .9, .8)
i20s9l7_ls <- simulate_intconsis_likertskew(20, .9, .7)
i20s9l6_ls <- simulate_intconsis_likertskew(20, .9, .6)
i20s9l5_ls <- simulate_intconsis_likertskew(20, .9, .5)

i20s9_ls <- rbind(i20s9l9_ls, i20s9l8_ls, i20s9l7_ls, i20s9l6_ls, i20s9l5_ls)
i20s9_ls <- as.tibble(i20s9_ls)
i20s9_ls <- i20s9_ls %>% mutate(condition = c("s9l9_ls", "s9l8_ls", "s9l7_ls", "s9l6_ls", "s9l5_ls"),
                                nitems = rep(20, 1))

i25s9l9_ls <- simulate_intconsis_likertskew(25, .9, .9)
i25s9l8_ls <- simulate_intconsis_likertskew(25, .9, .8)
i25s9l7_ls <- simulate_intconsis_likertskew(25, .9, .7)
i25s9l6_ls <- simulate_intconsis_likertskew(25, .9, .6)
i25s9l5_ls <- simulate_intconsis_likertskew(25, .9, .5)

i25s9_ls <- rbind(i25s9l9_ls, i25s9l8_ls, i25s9l7_ls, i25s9l6_ls, i25s9l5_ls)
i25s9_ls <- as.tibble(i25s9_ls)
i25s9_ls <- i25s9_ls %>% mutate(condition = c("s9l9_ls", "s9l8_ls", "s9l7_ls", "s9l6_ls", "s9l5_ls"),
                                nitems = rep(25, 1))

s9_ls <- rbind(i5s9_ls, i10s9_ls, i15s9_ls, i20s9_ls, i25s9_ls)

#SV = .8

i5s8l9_ls <- simulate_intconsis_likertskew(5, .8, .9)
i5s8l8_ls <- simulate_intconsis_likertskew(5, .8, .8)
i5s8l7_ls <- simulate_intconsis_likertskew(5, .8, .7)
i5s8l6_ls <- simulate_intconsis_likertskew(5, .8, .6)
i5s8l5_ls <- simulate_intconsis_likertskew(5, .8, .5)

i5s8_ls <- rbind(i5s8l9_ls, i5s8l8_ls, i5s8l7_ls, i5s8l6_ls, i5s8l5_ls)
i5s8_ls <- as.tibble(i5s8_ls)
i5s8_ls <- i5s8_ls %>% mutate(condition = c("s8l9_ls", "s8l8_ls", "s8l7_ls", "s8l6_ls", "s8l5_ls"),
                              nitems = rep(5, 1))

i10s8l9_ls <- simulate_intconsis_likertskew(10, .8, .9)
i10s8l8_ls <- simulate_intconsis_likertskew(10, .8, .8)
i10s8l7_ls <- simulate_intconsis_likertskew(10, .8, .7)
i10s8l6_ls <- simulate_intconsis_likertskew(10, .8, .6)
i10s8l5_ls <- simulate_intconsis_likertskew(10, .8, .5)

i10s8_ls <- rbind(i10s8l9_ls, i10s8l8_ls, i10s8l7_ls, i10s8l6_ls, i10s8l5_ls)
i10s8_ls <- as.tibble(i10s8_ls)
i10s8_ls <- i10s8_ls %>% mutate(condition = c("s8l9_ls", "s8l8_ls", "s8l7_ls", "s8l6_ls", "s8l5_ls"),
                                nitems = rep(10, 1))

i15s8l9_ls <- simulate_intconsis_likertskew(15, .8, .9)
i15s8l8_ls <- simulate_intconsis_likertskew(15, .8, .8)
i15s8l7_ls <- simulate_intconsis_likertskew(15, .8, .7)
i15s8l6_ls <- simulate_intconsis_likertskew(15, .8, .6)
i15s8l5_ls <- simulate_intconsis_likertskew(15, .8, .5)

i15s8_ls <- rbind(i15s8l9_ls, i15s8l8_ls, i15s8l7_ls, i15s8l6_ls, i15s8l5_ls)
i15s8_ls <- as.tibble(i15s8_ls)
i15s8_ls <- i15s8_ls %>% mutate(condition = c("s8l9_ls", "s8l8_ls", "s8l7_ls", "s8l6_ls", "s8l5_ls"),
                                nitems = rep(15, 1))

i20s8l9_ls <- simulate_intconsis_likertskew(20, .8, .9)
i20s8l8_ls <- simulate_intconsis_likertskew(20, .8, .8)
i20s8l7_ls <- simulate_intconsis_likertskew(20, .8, .7)
i20s8l6_ls <- simulate_intconsis_likertskew(20, .8, .6)
i20s8l5_ls <- simulate_intconsis_likertskew(20, .8, .5)

i20s8_ls <- rbind(i20s8l9_ls, i20s8l8_ls, i20s8l7_ls, i20s8l6_ls, i20s8l5_ls)
i20s8_ls <- as.tibble(i20s8_ls)
i20s8_ls <- i20s8_ls %>% mutate(condition = c("s8l9_ls", "s8l8_ls", "s8l7_ls", "s8l6_ls", "s8l5_ls"),
                                nitems = rep(20, 1))

i25s8l9_ls <- simulate_intconsis_likertskew(25, .8, .9)
i25s8l8_ls <- simulate_intconsis_likertskew(25, .8, .8)
i25s8l7_ls <- simulate_intconsis_likertskew(25, .8, .7)
i25s8l6_ls <- simulate_intconsis_likertskew(25, .8, .6)
i25s8l5_ls <- simulate_intconsis_likertskew(25, .8, .5)

i25s8_ls <- rbind(i25s8l9_ls, i25s8l8_ls, i25s8l7_ls, i25s8l6_ls, i25s8l5_ls)
i25s8_ls <- as.tibble(i25s8_ls)
i25s8_ls <- i25s8_ls %>% mutate(condition = c("s8l9_ls", "s8l8_ls", "s8l7_ls", "s8l6_ls", "s8l5_ls"),
                                nitems = rep(25, 1))

#SV = .7

i5s7l9_ls <- simulate_intconsis_likertskew(5, .7, .9)
i5s7l8_ls <- simulate_intconsis_likertskew(5, .7, .8)
i5s7l7_ls <- simulate_intconsis_likertskew(5, .7, .7)
i5s7l6_ls <- simulate_intconsis_likertskew(5, .7, .6)
i5s7l5_ls <- simulate_intconsis_likertskew(5, .7, .5)

i5s7_ls <- rbind(i5s7l9_ls, i5s7l8_ls, i5s7l7_ls, i5s7l6_ls, i5s7l5_ls)
i5s7_ls <- as.tibble(i5s7_ls)
i5s7_ls <- i5s7_ls %>% mutate(condition = c("s7l9_ls", "s7l8_ls", "s7l7_ls", "s7l6_ls", "s7l5_ls"),
                              nitems = rep(5, 1))

i10s7l9_ls <- simulate_intconsis_likertskew(10, .7, .9)
i10s7l8_ls <- simulate_intconsis_likertskew(10, .7, .8)
i10s7l7_ls <- simulate_intconsis_likertskew(10, .7, .7)
i10s7l6_ls <- simulate_intconsis_likertskew(10, .7, .6)
i10s7l5_ls <- simulate_intconsis_likertskew(10, .7, .5)

i10s7_ls <- rbind(i10s7l9_ls, i10s7l8_ls, i10s7l7_ls, i10s7l6_ls, i10s7l5_ls)
i10s7_ls <- as.tibble(i10s7_ls)
i10s7_ls <- i10s7_ls %>% mutate(condition = c("s7l9_ls", "s7l8_ls", "s7l7_ls", "s7l6_ls", "s7l5_ls"),
                                nitems = rep(10, 1))

i15s7l9_ls <- simulate_intconsis_likertskew(15, .7, .9)
i15s7l8_ls <- simulate_intconsis_likertskew(15, .7, .8)
i15s7l7_ls <- simulate_intconsis_likertskew(15, .7, .7)
i15s7l6_ls <- simulate_intconsis_likertskew(15, .7, .6)
i15s7l5_ls <- simulate_intconsis_likertskew(15, .7, .5)

i15s7_ls <- rbind(i15s7l9_ls, i15s7l8_ls, i15s7l7_ls, i15s7l6_ls, i15s7l5_ls)
i15s7_ls <- as.tibble(i15s7_ls)
i15s7_ls <- i15s7_ls %>% mutate(condition = c("s7l9_ls", "s7l8_ls", "s7l7_ls", "s7l6_ls", "s7l5_ls"),
                                nitems = rep(15, 1))

i20s7l9_ls <- simulate_intconsis_likertskew(20, .7, .9)
i20s7l8_ls <- simulate_intconsis_likertskew(20, .7, .8)
i20s7l7_ls <- simulate_intconsis_likertskew(20, .7, .7)
i20s7l6_ls <- simulate_intconsis_likertskew(20, .7, .6)
i20s7l5_ls <- simulate_intconsis_likertskew(20, .7, .5)

i20s7_ls <- rbind(i20s7l9_ls, i20s7l8_ls, i20s7l7_ls, i20s7l6_ls, i20s7l5_ls)
i20s7_ls <- as.tibble(i20s7_ls)
i20s7_ls <- i20s7_ls %>% mutate(condition = c("s7l9_ls", "s7l8_ls", "s7l7_ls", "s7l6_ls", "s7l5_ls"),
                                nitems = rep(20, 1))

i25s7l9_ls <- simulate_intconsis_likertskew(25, .7, .9)
i25s7l8_ls <- simulate_intconsis_likertskew(25, .7, .8)
i25s7l7_ls <- simulate_intconsis_likertskew(25, .7, .7)
i25s7l6_ls <- simulate_intconsis_likertskew(25, .7, .6)
i25s7l5_ls <- simulate_intconsis_likertskew(25, .7, .5)

i25s7_ls <- rbind(i25s7l9_ls, i25s7l8_ls, i25s7l7_ls, i25s7l6_ls, i25s7l5_ls)
i25s7_ls <- as.tibble(i25s7_ls)
i25s7_ls <- i25s7_ls %>% mutate(condition = c("s7l9_ls", "s7l8_ls", "s7l7_ls", "s7l6_ls", "s7l5_ls"),
                                nitems = rep(25, 1))
#Dichot 5050
#SV = .9
i5s9l9_d55 <- simulate_intconsis_dichot5050(5, .9, .9)
i5s9l8_d55 <- simulate_intconsis_dichot5050(5, .9, .8)
i5s9l7_d55 <- simulate_intconsis_dichot5050(5, .9, .7)
i5s9l6_d55 <- simulate_intconsis_dichot5050(5, .9, .6)
i5s9l5_d55 <- simulate_intconsis_dichot5050(5, .9, .5)

i5s9_d55 <- rbind(i5s9l9_d55, i5s9l8_d55, i5s9l7_d55, i5s9l6_d55, i5s9l5_d55)
i5s9_d55 <- as.tibble(i5s9_d55)
i5s9_d55 <- i5s9_d55 %>% mutate(condition = c("s9l9_d55", "s9l8_d55", "s9l7_d55", "s9l6_d55", "s9l5_d55"),
                              nitems = rep(5, 1))

i10s9l9_d55 <- simulate_intconsis_dichot5050(10, .9, .9)
i10s9l8_d55 <- simulate_intconsis_dichot5050(10, .9, .8)
i10s9l7_d55 <- simulate_intconsis_dichot5050(10, .9, .7)
i10s9l6_d55 <- simulate_intconsis_dichot5050(10, .9, .6)
i10s9l5_d55 <- simulate_intconsis_dichot5050(10, .9, .5)

i10s9_d55 <- rbind(i10s9l9_d55, i10s9l8_d55, i10s9l7_d55, i10s9l6_d55, i10s9l5_d55)
i10s9_d55 <- as.tibble(i10s9_d55)
i10s9_d55 <- i10s9_d55 %>% mutate(condition = c("s9l9_d55", "s9l8_d55", "s9l7_d55", "s9l6_d55", "s9l5_d55"),
                                nitems = rep(10, 1))

i15s9l9_d55 <- simulate_intconsis_dichot5050(15, .9, .9)
i15s9l8_d55 <- simulate_intconsis_dichot5050(15, .9, .8)
i15s9l7_d55 <- simulate_intconsis_dichot5050(15, .9, .7)
i15s9l6_d55 <- simulate_intconsis_dichot5050(15, .9, .6)
i15s9l5_d55 <- simulate_intconsis_dichot5050(15, .9, .5)

i15s9_d55 <- rbind(i15s9l9_d55, i15s9l8_d55, i15s9l7_d55, i15s9l6_d55, i15s9l5_d55)
i15s9_d55 <- as.tibble(i15s9_d55)
i15s9_d55 <- i15s9_d55 %>% mutate(condition = c("s9l9_d55", "s9l8_d55", "s9l7_d55", "s9l6_d55", "s9l5_d55"),
                                nitems = rep(15, 1))

i20s9l9_d55 <- simulate_intconsis_dichot5050(20, .9, .9)
i20s9l8_d55 <- simulate_intconsis_dichot5050(20, .9, .8)
i20s9l7_d55 <- simulate_intconsis_dichot5050(20, .9, .7)
i20s9l6_d55 <- simulate_intconsis_dichot5050(20, .9, .6)
i20s9l5_d55 <- simulate_intconsis_dichot5050(20, .9, .5)

i20s9_d55 <- rbind(i20s9l9_d55, i20s9l8_d55, i20s9l7_d55, i20s9l6_d55, i20s9l5_d55)
i20s9_d55 <- as.tibble(i20s9_d55)
i20s9_d55 <- i20s9_d55 %>% mutate(condition = c("s9l9_d55", "s9l8_d55", "s9l7_d55", "s9l6_d55", "s9l5_d55"),
                                nitems = rep(20, 1))

i25s9l9_d55 <- simulate_intconsis_dichot5050(25, .9, .9)
i25s9l8_d55 <- simulate_intconsis_dichot5050(25, .9, .8)
i25s9l7_d55 <- simulate_intconsis_dichot5050(25, .9, .7)
i25s9l6_d55 <- simulate_intconsis_dichot5050(25, .9, .6)
i25s9l5_d55 <- simulate_intconsis_dichot5050(25, .9, .5)

i25s9_d55 <- rbind(i25s9l9_d55, i25s9l8_d55, i25s9l7_d55, i25s9l6_d55, i25s9l5_d55)
i25s9_d55 <- as.tibble(i25s9_d55)
i25s9_d55 <- i25s9_d55 %>% mutate(condition = c("s9l9_d55", "s9l8_d55", "s9l7_d55", "s9l6_d55", "s9l5_d55"),
                                nitems = rep(25, 1))

s9_d55 <- rbind(i5s9_d55, i10s9_d55, i15s9_d55, i20s9_d55, i25s9_d55)

#SV = .8

i5s8l9_d55 <- simulate_intconsis_dichot5050(5, .8, .9)
i5s8l8_d55 <- simulate_intconsis_dichot5050(5, .8, .8)
i5s8l7_d55 <- simulate_intconsis_dichot5050(5, .8, .7)
i5s8l6_d55 <- simulate_intconsis_dichot5050(5, .8, .6)
i5s8l5_d55 <- simulate_intconsis_dichot5050(5, .8, .5)

i5s8_d55 <- rbind(i5s8l9_d55, i5s8l8_d55, i5s8l7_d55, i5s8l6_d55, i5s8l5_d55)
i5s8_d55 <- as.tibble(i5s8_d55)
i5s8_d55 <- i5s8_d55 %>% mutate(condition = c("s8l9_d55", "s8l8_d55", "s8l7_d55", "s8l6_d55", "s8l5_d55"),
                              nitems = rep(5, 1))

i10s8l9_d55 <- simulate_intconsis_dichot5050(10, .8, .9)
i10s8l8_d55 <- simulate_intconsis_dichot5050(10, .8, .8)
i10s8l7_d55 <- simulate_intconsis_dichot5050(10, .8, .7)
i10s8l6_d55 <- simulate_intconsis_dichot5050(10, .8, .6)
i10s8l5_d55 <- simulate_intconsis_dichot5050(10, .8, .5)

i10s8_d55 <- rbind(i10s8l9_d55, i10s8l8_d55, i10s8l7_d55, i10s8l6_d55, i10s8l5_d55)
i10s8_d55 <- as.tibble(i10s8_d55)
i10s8_d55 <- i10s8_d55 %>% mutate(condition = c("s8l9_d55", "s8l8_d55", "s8l7_d55", "s8l6_d55", "s8l5_d55"),
                                nitems = rep(10, 1))

i15s8l9_d55 <- simulate_intconsis_dichot5050(15, .8, .9)
i15s8l8_d55 <- simulate_intconsis_dichot5050(15, .8, .8)
i15s8l7_d55 <- simulate_intconsis_dichot5050(15, .8, .7)
i15s8l6_d55 <- simulate_intconsis_dichot5050(15, .8, .6)
i15s8l5_d55 <- simulate_intconsis_dichot5050(15, .8, .5)

i15s8_d55 <- rbind(i15s8l9_d55, i15s8l8_d55, i15s8l7_d55, i15s8l6_d55, i15s8l5_d55)
i15s8_d55 <- as.tibble(i15s8_d55)
i15s8_d55 <- i15s8_d55 %>% mutate(condition = c("s8l9_d55", "s8l8_d55", "s8l7_d55", "s8l6_d55", "s8l5_d55"),
                                nitems = rep(15, 1))

i20s8l9_d55 <- simulate_intconsis_dichot5050(20, .8, .9)
i20s8l8_d55 <- simulate_intconsis_dichot5050(20, .8, .8)
i20s8l7_d55 <- simulate_intconsis_dichot5050(20, .8, .7)
i20s8l6_d55 <- simulate_intconsis_dichot5050(20, .8, .6)
i20s8l5_d55 <- simulate_intconsis_dichot5050(20, .8, .5)

i20s8_d55 <- rbind(i20s8l9_d55, i20s8l8_d55, i20s8l7_d55, i20s8l6_d55, i20s8l5_d55)
i20s8_d55 <- as.tibble(i20s8_d55)
i20s8_d55 <- i20s8_d55 %>% mutate(condition = c("s8l9_d55", "s8l8_d55", "s8l7_d55", "s8l6_d55", "s8l5_d55"),
                                nitems = rep(20, 1))

i25s8l9_d55 <- simulate_intconsis_dichot5050(25, .8, .9)
i25s8l8_d55 <- simulate_intconsis_dichot5050(25, .8, .8)
i25s8l7_d55 <- simulate_intconsis_dichot5050(25, .8, .7)
i25s8l6_d55 <- simulate_intconsis_dichot5050(25, .8, .6)
i25s8l5_d55 <- simulate_intconsis_dichot5050(25, .8, .5)

i25s8_d55 <- rbind(i25s8l9_d55, i25s8l8_d55, i25s8l7_d55, i25s8l6_d55, i25s8l5_d55)
i25s8_d55 <- as.tibble(i25s8_d55)
i25s8_d55 <- i25s8_d55 %>% mutate(condition = c("s8l9_d55", "s8l8_d55", "s8l7_d55", "s8l6_d55", "s8l5_d55"),
                                nitems = rep(25, 1))

#SV = .7

i5s7l9_d55 <- simulate_intconsis_dichot5050(5, .7, .9)
i5s7l8_d55 <- simulate_intconsis_dichot5050(5, .7, .8)
i5s7l7_d55 <- simulate_intconsis_dichot5050(5, .7, .7)
i5s7l6_d55 <- simulate_intconsis_dichot5050(5, .7, .6)
i5s7l5_d55 <- simulate_intconsis_dichot5050(5, .7, .5)

i5s7_d55 <- rbind(i5s7l9_d55, i5s7l8_d55, i5s7l7_d55, i5s7l6_d55, i5s7l5_d55)
i5s7_d55 <- as.tibble(i5s7_d55)
i5s7_d55 <- i5s7_d55 %>% mutate(condition = c("s7l9_d55", "s7l8_d55", "s7l7_d55", "s7l6_d55", "s7l5_d55"),
                              nitems = rep(5, 1))

i10s7l9_d55 <- simulate_intconsis_dichot5050(10, .7, .9)
i10s7l8_d55 <- simulate_intconsis_dichot5050(10, .7, .8)
i10s7l7_d55 <- simulate_intconsis_dichot5050(10, .7, .7)
i10s7l6_d55 <- simulate_intconsis_dichot5050(10, .7, .6)
i10s7l5_d55 <- simulate_intconsis_dichot5050(10, .7, .5)

i10s7_d55 <- rbind(i10s7l9_d55, i10s7l8_d55, i10s7l7_d55, i10s7l6_d55, i10s7l5_d55)
i10s7_d55 <- as.tibble(i10s7_d55)
i10s7_d55 <- i10s7_d55 %>% mutate(condition = c("s7l9_d55", "s7l8_d55", "s7l7_d55", "s7l6_d55", "s7l5_d55"),
                                nitems = rep(10, 1))

i15s7l9_d55 <- simulate_intconsis_dichot5050(15, .7, .9)
i15s7l8_d55 <- simulate_intconsis_dichot5050(15, .7, .8)
i15s7l7_d55 <- simulate_intconsis_dichot5050(15, .7, .7)
i15s7l6_d55 <- simulate_intconsis_dichot5050(15, .7, .6)
i15s7l5_d55 <- simulate_intconsis_dichot5050(15, .7, .5)

i15s7_d55 <- rbind(i15s7l9_d55, i15s7l8_d55, i15s7l7_d55, i15s7l6_d55, i15s7l5_d55)
i15s7_d55 <- as.tibble(i15s7_d55)
i15s7_d55 <- i15s7_d55 %>% mutate(condition = c("s7l9_d55", "s7l8_d55", "s7l7_d55", "s7l6_d55", "s7l5_d55"),
                                nitems = rep(15, 1))

i20s7l9_d55 <- simulate_intconsis_dichot5050(20, .7, .9)
i20s7l8_d55 <- simulate_intconsis_dichot5050(20, .7, .8)
i20s7l7_d55 <- simulate_intconsis_dichot5050(20, .7, .7)
i20s7l6_d55 <- simulate_intconsis_dichot5050(20, .7, .6)
i20s7l5_d55 <- simulate_intconsis_dichot5050(20, .7, .5)

i20s7_d55 <- rbind(i20s7l9_d55, i20s7l8_d55, i20s7l7_d55, i20s7l6_d55, i20s7l5_d55)
i20s7_d55 <- as.tibble(i20s7_d55)
i20s7_d55 <- i20s7_d55 %>% mutate(condition = c("s7l9_d55", "s7l8_d55", "s7l7_d55", "s7l6_d55", "s7l5_d55"),
                                nitems = rep(20, 1))

i25s7l9_d55 <- simulate_intconsis_dichot5050(25, .7, .9)
i25s7l8_d55 <- simulate_intconsis_dichot5050(25, .7, .8)
i25s7l7_d55 <- simulate_intconsis_dichot5050(25, .7, .7)
i25s7l6_d55 <- simulate_intconsis_dichot5050(25, .7, .6)
i25s7l5_d55 <- simulate_intconsis_dichot5050(25, .7, .5)

i25s7_d55 <- rbind(i25s7l9_d55, i25s7l8_d55, i25s7l7_d55, i25s7l6_d55, i25s7l5_d55)
i25s7_d55 <- as.tibble(i25s7_d55)
i25s7_d55 <- i25s7_d55 %>% mutate(condition = c("s7l9_d55", "s7l8_d55", "s7l7_d55", "s7l6_d55", "s7l5_d55"),
                                nitems = rep(25, 1))


#Dichot 80 20
#SV = .9
i5s9l9_d82 <- simulate_intconsis_dichot8020(5, .9, .9)
i5s9l8_d82 <- simulate_intconsis_dichot8020(5, .9, .8)
i5s9l7_d82 <- simulate_intconsis_dichot8020(5, .9, .7)
i5s9l6_d82 <- simulate_intconsis_dichot8020(5, .9, .6)
i5s9l5_d82 <- simulate_intconsis_dichot8020(5, .9, .5)

i5s9_d82 <- rbind(i5s9l9_d82, i5s9l8_d82, i5s9l7_d82, i5s9l6_d82, i5s9l5_d82)
i5s9_d82 <- as.tibble(i5s9_d82)
i5s9_d82 <- i5s9_d82 %>% mutate(condition = c("s9l9_d82", "s9l8_d82", "s9l7_d82", "s9l6_d82", "s9l5_d82"),
                              nitems = rep(5, 1))

i10s9l9_d82 <- simulate_intconsis_dichot8020(10, .9, .9)
i10s9l8_d82 <- simulate_intconsis_dichot8020(10, .9, .8)
i10s9l7_d82 <- simulate_intconsis_dichot8020(10, .9, .7)
i10s9l6_d82 <- simulate_intconsis_dichot8020(10, .9, .6)
i10s9l5_d82 <- simulate_intconsis_dichot8020(10, .9, .5)

i10s9_d82 <- rbind(i10s9l9_d82, i10s9l8_d82, i10s9l7_d82, i10s9l6_d82, i10s9l5_d82)
i10s9_d82 <- as.tibble(i10s9_d82)
i10s9_d82 <- i10s9_d82 %>% mutate(condition = c("s9l9_d82", "s9l8_d82", "s9l7_d82", "s9l6_d82", "s9l5_d82"),
                                nitems = rep(10, 1))

i15s9l9_d82 <- simulate_intconsis_dichot8020(15, .9, .9)
i15s9l8_d82 <- simulate_intconsis_dichot8020(15, .9, .8)
i15s9l7_d82 <- simulate_intconsis_dichot8020(15, .9, .7)
i15s9l6_d82 <- simulate_intconsis_dichot8020(15, .9, .6)
i15s9l5_d82 <- simulate_intconsis_dichot8020(15, .9, .5)

i15s9_d82 <- rbind(i15s9l9_d82, i15s9l8_d82, i15s9l7_d82, i15s9l6_d82, i15s9l5_d82)
i15s9_d82 <- as.tibble(i15s9_d82)
i15s9_d82 <- i15s9_d82 %>% mutate(condition = c("s9l9_d82", "s9l8_d82", "s9l7_d82", "s9l6_d82", "s9l5_d82"),
                                nitems = rep(15, 1))

i20s9l9_d82 <- simulate_intconsis_dichot8020(20, .9, .9)
i20s9l8_d82 <- simulate_intconsis_dichot8020(20, .9, .8)
i20s9l7_d82 <- simulate_intconsis_dichot8020(20, .9, .7)
i20s9l6_d82 <- simulate_intconsis_dichot8020(20, .9, .6)
i20s9l5_d82 <- simulate_intconsis_dichot8020(20, .9, .5)

i20s9_d82 <- rbind(i20s9l9_d82, i20s9l8_d82, i20s9l7_d82, i20s9l6_d82, i20s9l5_d82)
i20s9_d82 <- as.tibble(i20s9_d82)
i20s9_d82 <- i20s9_d82 %>% mutate(condition = c("s9l9_d82", "s9l8_d82", "s9l7_d82", "s9l6_d82", "s9l5_d82"),
                                nitems = rep(20, 1))

i25s9l9_d82 <- simulate_intconsis_dichot8020(25, .9, .9)
i25s9l8_d82 <- simulate_intconsis_dichot8020(25, .9, .8)
i25s9l7_d82 <- simulate_intconsis_dichot8020(25, .9, .7)
i25s9l6_d82 <- simulate_intconsis_dichot8020(25, .9, .6)
i25s9l5_d82 <- simulate_intconsis_dichot8020(25, .9, .5)

i25s9_d82 <- rbind(i25s9l9_d82, i25s9l8_d82, i25s9l7_d82, i25s9l6_d82, i25s9l5_d82)
i25s9_d82 <- as.tibble(i25s9_d82)
i25s9_d82 <- i25s9_d82 %>% mutate(condition = c("s9l9_d82", "s9l8_d82", "s9l7_d82", "s9l6_d82", "s9l5_d82"),
                                nitems = rep(25, 1))

s9_d82 <- rbind(i5s9_d82, i10s9_d82, i15s9_d82, i20s9_d82, i25s9_d82)

#SV = .8

i5s8l9_d82 <- simulate_intconsis_dichot8020(5, .8, .9)
i5s8l8_d82 <- simulate_intconsis_dichot8020(5, .8, .8)
i5s8l7_d82 <- simulate_intconsis_dichot8020(5, .8, .7)
i5s8l6_d82 <- simulate_intconsis_dichot8020(5, .8, .6)
i5s8l5_d82 <- simulate_intconsis_dichot8020(5, .8, .5)

i5s8_d82 <- rbind(i5s8l9_d82, i5s8l8_d82, i5s8l7_d82, i5s8l6_d82, i5s8l5_d82)
i5s8_d82 <- as.tibble(i5s8_d82)
i5s8_d82 <- i5s8_d82 %>% mutate(condition = c("s8l9_d82", "s8l8_d82", "s8l7_d82", "s8l6_d82", "s8l5_d82"),
                              nitems = rep(5, 1))

i10s8l9_d82 <- simulate_intconsis_dichot8020(10, .8, .9)
i10s8l8_d82 <- simulate_intconsis_dichot8020(10, .8, .8)
i10s8l7_d82 <- simulate_intconsis_dichot8020(10, .8, .7)
i10s8l6_d82 <- simulate_intconsis_dichot8020(10, .8, .6)
i10s8l5_d82 <- simulate_intconsis_dichot8020(10, .8, .5)

i10s8_d82 <- rbind(i10s8l9_d82, i10s8l8_d82, i10s8l7_d82, i10s8l6_d82, i10s8l5_d82)
i10s8_d82 <- as.tibble(i10s8_d82)
i10s8_d82 <- i10s8_d82 %>% mutate(condition = c("s8l9_d82", "s8l8_d82", "s8l7_d82", "s8l6_d82", "s8l5_d82"),
                                nitems = rep(10, 1))

i15s8l9_d82 <- simulate_intconsis_dichot8020(15, .8, .9)
i15s8l8_d82 <- simulate_intconsis_dichot8020(15, .8, .8)
i15s8l7_d82 <- simulate_intconsis_dichot8020(15, .8, .7)
i15s8l6_d82 <- simulate_intconsis_dichot8020(15, .8, .6)
i15s8l5_d82 <- simulate_intconsis_dichot8020(15, .8, .5)

i15s8_d82 <- rbind(i15s8l9_d82, i15s8l8_d82, i15s8l7_d82, i15s8l6_d82, i15s8l5_d82)
i15s8_d82 <- as.tibble(i15s8_d82)
i15s8_d82 <- i15s8_d82 %>% mutate(condition = c("s8l9_d82", "s8l8_d82", "s8l7_d82", "s8l6_d82", "s8l5_d82"),
                                nitems = rep(15, 1))

i20s8l9_d82 <- simulate_intconsis_dichot8020(20, .8, .9)
i20s8l8_d82 <- simulate_intconsis_dichot8020(20, .8, .8)
i20s8l7_d82 <- simulate_intconsis_dichot8020(20, .8, .7)
i20s8l6_d82 <- simulate_intconsis_dichot8020(20, .8, .6)
i20s8l5_d82 <- simulate_intconsis_dichot8020(20, .8, .5)

i20s8_d82 <- rbind(i20s8l9_d82, i20s8l8_d82, i20s8l7_d82, i20s8l6_d82, i20s8l5_d82)
i20s8_d82 <- as.tibble(i20s8_d82)
i20s8_d82 <- i20s8_d82 %>% mutate(condition = c("s8l9_d82", "s8l8_d82", "s8l7_d82", "s8l6_d82", "s8l5_d82"),
                                nitems = rep(20, 1))

i25s8l9_d82 <- simulate_intconsis_dichot8020(25, .8, .9)
i25s8l8_d82 <- simulate_intconsis_dichot8020(25, .8, .8)
i25s8l7_d82 <- simulate_intconsis_dichot8020(25, .8, .7)
i25s8l6_d82 <- simulate_intconsis_dichot8020(25, .8, .6)
i25s8l5_d82 <- simulate_intconsis_dichot8020(25, .8, .5)

i25s8_d82 <- rbind(i25s8l9_d82, i25s8l8_d82, i25s8l7_d82, i25s8l6_d82, i25s8l5_d82)
i25s8_d82 <- as.tibble(i25s8_d82)
i25s8_d82 <- i25s8_d82 %>% mutate(condition = c("s8l9_d82", "s8l8_d82", "s8l7_d82", "s8l6_d82", "s8l5_d82"),
                                nitems = rep(25, 1))

#SV = .7

i5s7l9_d82 <- simulate_intconsis_dichot8020(5, .7, .9)
i5s7l8_d82 <- simulate_intconsis_dichot8020(5, .7, .8)
i5s7l7_d82 <- simulate_intconsis_dichot8020(5, .7, .7)
i5s7l6_d82 <- simulate_intconsis_dichot8020(5, .7, .6)
i5s7l5_d82 <- simulate_intconsis_dichot8020(5, .7, .5)

i5s7_d82 <- rbind(i5s7l9_d82, i5s7l8_d82, i5s7l7_d82, i5s7l6_d82, i5s7l5_d82)
i5s7_d82 <- as.tibble(i5s7_d82)
i5s7_d82 <- i5s7_d82 %>% mutate(condition = c("s7l9_d82", "s7l8_d82", "s7l7_d82", "s7l6_d82", "s7l5_d82"),
                              nitems = rep(5, 1))

i10s7l9_d82 <- simulate_intconsis_dichot8020(10, .7, .9)
i10s7l8_d82 <- simulate_intconsis_dichot8020(10, .7, .8)
i10s7l7_d82 <- simulate_intconsis_dichot8020(10, .7, .7)
i10s7l6_d82 <- simulate_intconsis_dichot8020(10, .7, .6)
i10s7l5_d82 <- simulate_intconsis_dichot8020(10, .7, .5)

i10s7_d82 <- rbind(i10s7l9_d82, i10s7l8_d82, i10s7l7_d82, i10s7l6_d82, i10s7l5_d82)
i10s7_d82 <- as.tibble(i10s7_d82)
i10s7_d82 <- i10s7_d82 %>% mutate(condition = c("s7l9_d82", "s7l8_d82", "s7l7_d82", "s7l6_d82", "s7l5_d82"),
                                nitems = rep(10, 1))

i15s7l9_d82 <- simulate_intconsis_dichot8020(15, .7, .9)
i15s7l8_d82 <- simulate_intconsis_dichot8020(15, .7, .8)
i15s7l7_d82 <- simulate_intconsis_dichot8020(15, .7, .7)
i15s7l6_d82 <- simulate_intconsis_dichot8020(15, .7, .6)
i15s7l5_d82 <- simulate_intconsis_dichot8020(15, .7, .5)

i15s7_d82 <- rbind(i15s7l9_d82, i15s7l8_d82, i15s7l7_d82, i15s7l6_d82, i15s7l5_d82)
i15s7_d82 <- as.tibble(i15s7_d82)
i15s7_d82 <- i15s7_d82 %>% mutate(condition = c("s7l9_d82", "s7l8_d82", "s7l7_d82", "s7l6_d82", "s7l5_d82"),
                                nitems = rep(15, 1))

i20s7l9_d82 <- simulate_intconsis_dichot8020(20, .7, .9)
i20s7l8_d82 <- simulate_intconsis_dichot8020(20, .7, .8)
i20s7l7_d82 <- simulate_intconsis_dichot8020(20, .7, .7)
i20s7l6_d82 <- simulate_intconsis_dichot8020(20, .7, .6)
i20s7l5_d82 <- simulate_intconsis_dichot8020(20, .7, .5)

i20s7_d82 <- rbind(i20s7l9_d82, i20s7l8_d82, i20s7l7_d82, i20s7l6_d82, i20s7l5_d82)
i20s7_d82 <- as.tibble(i20s7_d82)
i20s7_d82 <- i20s7_d82 %>% mutate(condition = c("s7l9_d82", "s7l8_d82", "s7l7_d82", "s7l6_d82", "s7l5_d82"),
                                nitems = rep(20, 1))

i25s7l9_d82 <- simulate_intconsis_dichot8020(25, .7, .9)
i25s7l8_d82 <- simulate_intconsis_dichot8020(25, .7, .8)
i25s7l7_d82 <- simulate_intconsis_dichot8020(25, .7, .7)
i25s7l6_d82 <- simulate_intconsis_dichot8020(25, .7, .6)
i25s7l5_d82 <- simulate_intconsis_dichot8020(25, .7, .5)

i25s7_d82 <- rbind(i25s7l9_d82, i25s7l8_d82, i25s7l7_d82, i25s7l6_d82, i25s7l5_d82)
i25s7_d82 <- as.tibble(i25s7_d82)
i25s7_d82 <- i25s7_d82 %>% mutate(condition = c("s7l9_d82", "s7l8_d82", "s7l7_d82", "s7l6_d82", "s7l5_d82"),
                                nitems = rep(25, 1))



#Combining Data for Tables

s9_ln <- rbind(i5s9_ln, i10s9_ln, i15s9_ln, i20s9_ln, i25s9_ln)
s8_ln <- rbind(i5s8_ln, i10s8_ln, i15s8_ln, i20s8_ln, i25s8_ln)
s7_ln <- rbind(i5s7_ln, i10s7_ln, i15s7_ln, i20s7_ln, i25s7_ln)

s9_ls <- rbind(i5s9_ls, i10s9_ls, i15s9_ls, i20s9_ls, i25s9_ls)
s8_ls <- rbind(i5s8_ls, i10s8_ls, i15s8_ls, i20s8_ls, i25s8_ls)
s7_ls <- rbind(i5s7_ls, i10s7_ls, i15s7_ls, i20s7_ls, i25s7_ls)

s9_d55 <- rbind(i5s9_d55, i10s9_d55, i15s9_d55, i20s9_d55, i25s9_d55)
s8_d55 <- rbind(i5s8_d55, i10s8_d55, i15s8_d55, i20s8_d55, i25s8_d55)
s7_d55 <- rbind(i5s7_d55, i10s7_d55, i15s7_d55, i20s7_d55, i25s7_d55)

s9_d82 <- rbind(i5s9_d82, i10s9_d82, i15s9_d82, i20s9_d82, i25s9_d82)
s8_d82 <- rbind(i5s8_d82, i10s8_d82, i15s8_d82, i20s8_d82, i25s8_d82)
s7_d82 <- rbind(i5s7_d82, i10s7_d82, i15s7_d82, i20s7_d82, i25s7_d82)

internalconsistency_simulation_results <- rbind(s9_ln ,
                                                s8_ln ,
                                                s7_ln ,
                                                s9_ls ,
                                                s8_ls ,
                                                s7_ls ,
                                                s9_d55,
                                                s8_d55,
                                                s7_d55,
                                                s9_d82,
                                                s8_d82,
                                                s7_d82)

saveRDS(internalconsistency_simulation_results, file = "IC_results.RData")

s9_ln_wide_omega <- dcast(s9_ln, nitems ~ condition, value.var="omega")
s9_ln_wide_omega

test_tbl <- s9_ln_wide %>% tbl_summary(by = nitems, statistic = all_continuous() ~ "{mean}", missing = "no")

#next -- make condition variable just s9lX_ln