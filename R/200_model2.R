# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

# Model 1 contains the results for the internal consistency omega/alpha
set.seed(2212020)
#Likert Norm

i5s9l9_ln <- simulate_intconsis_likertnorm(5, .9, .9)
i5s9l8_ln <- simulate_intconsis_likertnorm(5, .9, .8)
i5s9l7_ln <- simulate_intconsis_likertnorm(5, .9, .7)
i5s9l6_ln <- simulate_intconsis_likertnorm(5, .9, .6)
i5s9l5_ln <- simulate_intconsis_likertnorm(5, .9, .5)

i5s9_ln <- rbind(i5s9l9_ln, i5s9l8_ln, i5s9l7_ln, i5s9l6_ln, i5s9l5_ln)
i5s9_ln <- as.tibble(i5s9_ln)
i5s9_ln <- i5s9_ln %>% mutate(condition = c("i5s9l9_ln", "i5s9l8_ln", "i5s9l7_ln", "i5s9l6_ln", "i5s9l5_ln"),
                              nitems = rep(5, 1))

i10s9l9_ln <- simulate_intconsis_likertnorm(10, .9, .9)
i10s9l8_ln <- simulate_intconsis_likertnorm(10, .9, .8)
i10s9l7_ln <- simulate_intconsis_likertnorm(10, .9, .7)
i10s9l6_ln <- simulate_intconsis_likertnorm(10, .9, .6)
i10s9l5_ln <- simulate_intconsis_likertnorm(10, .9, .5)

i10s9_ln <- rbind(i10s9l9_ln, i10s9l8_ln, i10s9l7_ln, i10s9l6_ln, i10s9l5_ln)
i10s9_ln <- as.tibble(i10s9_ln)
i10s9_ln <- i10s9_ln %>% mutate(condition = c("i10s9l9_ln", "i10s9l8_ln", "i10s9l7_ln", "i10s9l6_ln", "i10s9l5_ln"),
                                nitems = rep(10, 1))

i15s9l9_ln <- simulate_intconsis_likertnorm(15, .9, .9)
i15s9l8_ln <- simulate_intconsis_likertnorm(15, .9, .8)
i15s9l7_ln <- simulate_intconsis_likertnorm(15, .9, .7)
i15s9l6_ln <- simulate_intconsis_likertnorm(15, .9, .6)
i15s9l5_ln <- simulate_intconsis_likertnorm(15, .9, .5)

i15s9_ln <- rbind(i15s9l9_ln, i15s9l8_ln, i15s9l7_ln, i15s9l6_ln, i15s9l5_ln)
i15s9_ln <- as.tibble(i15s9_ln)
i15s9_ln <- i15s9_ln %>% mutate(condition = c("i15s9l9_ln", "i15s9l8_ln", "i15s9l7_ln", "i15s9l6_ln", "i15s9l5_ln"),
                                nitems = rep(15, 1))

i20s9l9_ln <- simulate_intconsis_likertnorm(20, .9, .9)
i20s9l8_ln <- simulate_intconsis_likertnorm(20, .9, .8)
i20s9l7_ln <- simulate_intconsis_likertnorm(20, .9, .7)
i20s9l6_ln <- simulate_intconsis_likertnorm(20, .9, .6)
i20s9l5_ln <- simulate_intconsis_likertnorm(20, .9, .5)

i20s9_ln <- rbind(i20s9l9_ln, i20s9l8_ln, i20s9l7_ln, i20s9l6_ln, i20s9l5_ln)
i20s9_ln <- as.tibble(i20s9_ln)
i20s9_ln <- i20s9_ln %>% mutate(condition = c("i20s9l9_ln", "i20s9l8_ln", "i20s9l7_ln", "i20s9l6_ln", "i20s9l5_ln"),
                                nitems = rep(20, 1))

i25s9l9_ln <- simulate_intconsis_likertnorm(25, .9, .9)
i25s9l8_ln <- simulate_intconsis_likertnorm(25, .9, .8)
i25s9l7_ln <- simulate_intconsis_likertnorm(25, .9, .7)
i25s9l6_ln <- simulate_intconsis_likertnorm(25, .9, .6)
i25s9l5_ln <- simulate_intconsis_likertnorm(25, .9, .5)

i25s9_ln <- rbind(i25s9l9_ln, i25s9l8_ln, i25s9l7_ln, i25s9l6_ln, i25s9l5_ln)
i25s9_ln <- as.tibble(i25s9_ln)
i25s9_ln <- i25s9_ln %>% mutate(condition = c("i25s9l9_ln", "i25s9l8_ln", "i25s9l7_ln", "i25s9l6_ln", "i25s9l5_ln"),
                                nitems = rep(25, 1))

s9_ln <- rbind(i5s9_ln, i10s9_ln, i15s9_ln, i20s9_ln, i25s9_ln)

library(reshape2)

data_wide <- dcast(s9_ln, nitems ~ condition, value.var="omega")
data_wide

test_tbl <- data_wide %>% tbl_summary(by = nitems, statistic = all_continuous() ~ "{mean}", missing = "no")

#next -- make condition variable just s9lX_ln