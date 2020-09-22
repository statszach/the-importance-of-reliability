# Model 3 contains the results for the internal consistency agreement results
set.seed(2212020)

#Likert Norm

i5s9l9_ln_agree <- simulate_agreement_likertnorm_5item(.9, .9)
i5s9l8_ln_agree <- simulate_agreement_likertnorm_5item(.9, .8)
i5s9l7_ln_agree <- simulate_agreement_likertnorm_5item(.9, .7)
i5s9l6_ln_agree <- simulate_agreement_likertnorm_5item(.9, .6)
i5s9l5_ln_agree <- simulate_agreement_likertnorm_5item(.9, .5)

i5s8l9_ln_agree <- simulate_agreement_likertnorm_5item(.8, .9)
i5s8l8_ln_agree <- simulate_agreement_likertnorm_5item(.8, .8)
i5s8l7_ln_agree <- simulate_agreement_likertnorm_5item(.8, .7)
i5s8l6_ln_agree <- simulate_agreement_likertnorm_5item(.8, .6)
i5s8l5_ln_agree <- simulate_agreement_likertnorm_5item(.8, .5)

i5s7l9_ln_agree <- simulate_agreement_likertnorm_5item(.7, .9)
i5s7l8_ln_agree <- simulate_agreement_likertnorm_5item(.7, .8)
i5s7l7_ln_agree <- simulate_agreement_likertnorm_5item(.7, .7)
i5s7l6_ln_agree <- simulate_agreement_likertnorm_5item(.7, .6)
i5s7l5_ln_agree <- simulate_agreement_likertnorm_5item(.7, .5)

i5_ln_agree <- rbind(i5s9l9_ln_agree,
                     i5s9l8_ln_agree,
                     i5s9l7_ln_agree,
                     i5s9l6_ln_agree,
                     i5s9l5_ln_agree,
                     i5s8l9_ln_agree,
                     i5s8l8_ln_agree,
                     i5s8l7_ln_agree,
                     i5s8l6_ln_agree,
                     i5s8l5_ln_agree,
                     i5s7l9_ln_agree,
                     i5s7l8_ln_agree,
                     i5s7l7_ln_agree,
                     i5s7l6_ln_agree,
                     i5s7l5_ln_agree)
i5_ln_agree <- as.tibble(i5_ln_agree)  
  
i5_ln_agree <- i5_ln_agree %>% mutate(condition = c("s9l9_ln",
                                                    "s9l8_ln",
                                                    "s9l7_ln",
                                                    "s9l6_ln",
                                                    "s9l5_ln",
                                                    "s8l9_ln",
                                                    "s8l8_ln",
                                                    "s8l7_ln",
                                                    "s8l6_ln",
                                                    "s8l5_ln",
                                                    "s7l9_ln",
                                                    "s7l8_ln",
                                                    "s7l7_ln",
                                                    "s7l6_ln",
                                                    "s7l5_ln"),
                                      nitems = rep(5, 1))


i10s9l9_ln_agree <- simulate_agreement_likertnorm_10item(.9, .9)
i10s9l8_ln_agree <- simulate_agreement_likertnorm_10item(.9, .8)
i10s9l7_ln_agree <- simulate_agreement_likertnorm_10item(.9, .7)
i10s9l6_ln_agree <- simulate_agreement_likertnorm_10item(.9, .6)
i10s9l5_ln_agree <- simulate_agreement_likertnorm_10item(.9, .5)

i10s8l9_ln_agree <- simulate_agreement_likertnorm_10item(.8, .9)
i10s8l8_ln_agree <- simulate_agreement_likertnorm_10item(.8, .8)
i10s8l7_ln_agree <- simulate_agreement_likertnorm_10item(.8, .7)
i10s8l6_ln_agree <- simulate_agreement_likertnorm_10item(.8, .6)
i10s8l5_ln_agree <- simulate_agreement_likertnorm_10item(.8, .5)

i10s7l9_ln_agree <- simulate_agreement_likertnorm_10item(.7, .9)
i10s7l8_ln_agree <- simulate_agreement_likertnorm_10item(.7, .8)
i10s7l7_ln_agree <- simulate_agreement_likertnorm_10item(.7, .7)
i10s7l6_ln_agree <- simulate_agreement_likertnorm_10item(.7, .6)
i10s7l5_ln_agree <- simulate_agreement_likertnorm_10item(.7, .5)

i10_ln_agree <- rbind(i10s9l9_ln_agree,
                     i10s9l8_ln_agree,
                     i10s9l7_ln_agree,
                     i10s9l6_ln_agree,
                     i10s9l5_ln_agree,
                     i10s8l9_ln_agree,
                     i10s8l8_ln_agree,
                     i10s8l7_ln_agree,
                     i10s8l6_ln_agree,
                     i10s8l5_ln_agree,
                     i10s7l9_ln_agree,
                     i10s7l8_ln_agree,
                     i10s7l7_ln_agree,
                     i10s7l6_ln_agree,
                     i10s7l5_ln_agree)
i10_ln_agree <- as.tibble(i10_ln_agree)  

i10_ln_agree <- i10_ln_agree %>% mutate(condition = c("s9l9_ln",
                                                    "s9l8_ln",
                                                    "s9l7_ln",
                                                    "s9l6_ln",
                                                    "s9l5_ln",
                                                    "s8l9_ln",
                                                    "s8l8_ln",
                                                    "s8l7_ln",
                                                    "s8l6_ln",
                                                    "s8l5_ln",
                                                    "s7l9_ln",
                                                    "s7l8_ln",
                                                    "s7l7_ln",
                                                    "s7l6_ln",
                                                    "s7l5_ln"),
                                      nitems = rep(10, 1))

  i15s9l9_ln_agree <- simulate_agreement_likertnorm_15item(.9, .9)
  i15s9l8_ln_agree <- simulate_agreement_likertnorm_15item(.9, .8)
  i15s9l7_ln_agree <- simulate_agreement_likertnorm_15item(.9, .7)
  i15s9l6_ln_agree <- simulate_agreement_likertnorm_15item(.9, .6)
  i15s9l5_ln_agree <- simulate_agreement_likertnorm_15item(.9, .5)
  
  i15s8l9_ln_agree <- simulate_agreement_likertnorm_15item(.8, .9)
  i15s8l8_ln_agree <- simulate_agreement_likertnorm_15item(.8, .8)
  i15s8l7_ln_agree <- simulate_agreement_likertnorm_15item(.8, .7)
  i15s8l6_ln_agree <- simulate_agreement_likertnorm_15item(.8, .6)
  i15s8l5_ln_agree <- simulate_agreement_likertnorm_15item(.8, .5)
  
  i15s7l9_ln_agree <- simulate_agreement_likertnorm_15item(.7, .9)
  i15s7l8_ln_agree <- simulate_agreement_likertnorm_15item(.7, .8)
  i15s7l7_ln_agree <- simulate_agreement_likertnorm_15item(.7, .7)
  i15s7l6_ln_agree <- simulate_agreement_likertnorm_15item(.7, .6)
  i15s7l5_ln_agree <- simulate_agreement_likertnorm_15item(.7, .5)
  
  i15_ln_agree <- rbind(i15s9l9_ln_agree,
                        i15s9l8_ln_agree,
                        i15s9l7_ln_agree,
                        i15s9l6_ln_agree,
                        i15s9l5_ln_agree,
                        i15s8l9_ln_agree,
                        i15s8l8_ln_agree,
                        i15s8l7_ln_agree,
                        i15s8l6_ln_agree,
                        i15s8l5_ln_agree,
                        i15s7l9_ln_agree,
                        i15s7l8_ln_agree,
                        i15s7l7_ln_agree,
                        i15s7l6_ln_agree,
                        i15s7l5_ln_agree)
  i15_ln_agree <- as.tibble(i15_ln_agree)  
  
  i15_ln_agree <- i15_ln_agree %>% mutate(condition = c("s9l9_ln",
                                                        "s9l8_ln",
                                                        "s9l7_ln",
                                                        "s9l6_ln",
                                                        "s9l5_ln",
                                                        "s8l9_ln",
                                                        "s8l8_ln",
                                                        "s8l7_ln",
                                                        "s8l6_ln",
                                                        "s8l5_ln",
                                                        "s7l9_ln",
                                                        "s7l8_ln",
                                                        "s7l7_ln",
                                                        "s7l6_ln",
                                                        "s7l5_ln"),
                                          nitems = rep(15, 1))

i20s9l9_ln_agree <- simulate_agreement_likertnorm_20item(.9, .9)
i20s9l8_ln_agree <- simulate_agreement_likertnorm_20item(.9, .8)
i20s9l7_ln_agree <- simulate_agreement_likertnorm_20item(.9, .7)
i20s9l6_ln_agree <- simulate_agreement_likertnorm_20item(.9, .6)
i20s9l5_ln_agree <- simulate_agreement_likertnorm_20item(.9, .5)

i20s8l9_ln_agree <- simulate_agreement_likertnorm_20item(.8, .9)
i20s8l8_ln_agree <- simulate_agreement_likertnorm_20item(.8, .8)
i20s8l7_ln_agree <- simulate_agreement_likertnorm_20item(.8, .7)
i20s8l6_ln_agree <- simulate_agreement_likertnorm_20item(.8, .6)
i20s8l5_ln_agree <- simulate_agreement_likertnorm_20item(.8, .5)

i20s7l9_ln_agree <- simulate_agreement_likertnorm_20item(.7, .9)
i20s7l8_ln_agree <- simulate_agreement_likertnorm_20item(.7, .8)
i20s7l7_ln_agree <- simulate_agreement_likertnorm_20item(.7, .7)
i20s7l6_ln_agree <- simulate_agreement_likertnorm_20item(.7, .6)
i20s7l5_ln_agree <- simulate_agreement_likertnorm_20item(.7, .5)

i20_ln_agree <- rbind(i20s9l9_ln_agree,
                      i20s9l8_ln_agree,
                      i20s9l7_ln_agree,
                      i20s9l6_ln_agree,
                      i20s9l5_ln_agree,
                      i20s8l9_ln_agree,
                      i20s8l8_ln_agree,
                      i20s8l7_ln_agree,
                      i20s8l6_ln_agree,
                      i20s8l5_ln_agree,
                      i20s7l9_ln_agree,
                      i20s7l8_ln_agree,
                      i20s7l7_ln_agree,
                      i20s7l6_ln_agree,
                      i20s7l5_ln_agree)
i20_ln_agree <- as.tibble(i20_ln_agree)  

i20_ln_agree <- i20_ln_agree %>% mutate(condition = c("s9l9_ln",
                                                      "s9l8_ln",
                                                      "s9l7_ln",
                                                      "s9l6_ln",
                                                      "s9l5_ln",
                                                      "s8l9_ln",
                                                      "s8l8_ln",
                                                      "s8l7_ln",
                                                      "s8l6_ln",
                                                      "s8l5_ln",
                                                      "s7l9_ln",
                                                      "s7l8_ln",
                                                      "s7l7_ln",
                                                      "s7l6_ln",
                                                      "s7l5_ln"),
                                        nitems = rep(20, 1))

i25s9l9_ln_agree <- simulate_agreement_likertnorm_25item(.9, .9)
i25s9l8_ln_agree <- simulate_agreement_likertnorm_25item(.9, .8)
i25s9l7_ln_agree <- simulate_agreement_likertnorm_25item(.9, .7)
i25s9l6_ln_agree <- simulate_agreement_likertnorm_25item(.9, .6)
i25s9l5_ln_agree <- simulate_agreement_likertnorm_25item(.9, .5)

i25s8l9_ln_agree <- simulate_agreement_likertnorm_25item(.8, .9)
i25s8l8_ln_agree <- simulate_agreement_likertnorm_25item(.8, .8)
i25s8l7_ln_agree <- simulate_agreement_likertnorm_25item(.8, .7)
i25s8l6_ln_agree <- simulate_agreement_likertnorm_25item(.8, .6)
i25s8l5_ln_agree <- simulate_agreement_likertnorm_25item(.8, .5)

i25s7l9_ln_agree <- simulate_agreement_likertnorm_25item(.7, .9)
i25s7l8_ln_agree <- simulate_agreement_likertnorm_25item(.7, .8)
i25s7l7_ln_agree <- simulate_agreement_likertnorm_25item(.7, .7)
i25s7l6_ln_agree <- simulate_agreement_likertnorm_25item(.7, .6)
i25s7l5_ln_agree <- simulate_agreement_likertnorm_25item(.7, .5)

i25_ln_agree <- rbind(i25s9l9_ln_agree,
                      i25s9l8_ln_agree,
                      i25s9l7_ln_agree,
                      i25s9l6_ln_agree,
                      i25s9l5_ln_agree,
                      i25s8l9_ln_agree,
                      i25s8l8_ln_agree,
                      i25s8l7_ln_agree,
                      i25s8l6_ln_agree,
                      i25s8l5_ln_agree,
                      i25s7l9_ln_agree,
                      i25s7l8_ln_agree,
                      i25s7l7_ln_agree,
                      i25s7l6_ln_agree,
                      i25s7l5_ln_agree)
i25_ln_agree <- as.tibble(i25_ln_agree)  

i25_ln_agree <- i25_ln_agree %>% mutate(condition = c("s9l9_ln",
                                                      "s9l8_ln",
                                                      "s9l7_ln",
                                                      "s9l6_ln",
                                                      "s9l5_ln",
                                                      "s8l9_ln",
                                                      "s8l8_ln",
                                                      "s8l7_ln",
                                                      "s8l6_ln",
                                                      "s8l5_ln",
                                                      "s7l9_ln",
                                                      "s7l8_ln",
                                                      "s7l7_ln",
                                                      "s7l6_ln",
                                                      "s7l5_ln"),
                                        nitems = rep(25, 1))

#Likert Skew


i5s9l9_ls_agree <- simulate_agreement_likertskew_5item(.9, .9)
i5s9l8_ls_agree <- simulate_agreement_likertskew_5item(.9, .8)
i5s9l7_ls_agree <- simulate_agreement_likertskew_5item(.9, .7)
i5s9l6_ls_agree <- simulate_agreement_likertskew_5item(.9, .6)
i5s9l5_ls_agree <- simulate_agreement_likertskew_5item(.9, .5)

i5s8l9_ls_agree <- simulate_agreement_likertskew_5item(.8, .9)
i5s8l8_ls_agree <- simulate_agreement_likertskew_5item(.8, .8)
i5s8l7_ls_agree <- simulate_agreement_likertskew_5item(.8, .7)
i5s8l6_ls_agree <- simulate_agreement_likertskew_5item(.8, .6)
i5s8l5_ls_agree <- simulate_agreement_likertskew_5item(.8, .5)

i5s7l9_ls_agree <- simulate_agreement_likertskew_5item(.7, .9)
i5s7l8_ls_agree <- simulate_agreement_likertskew_5item(.7, .8)
i5s7l7_ls_agree <- simulate_agreement_likertskew_5item(.7, .7)
i5s7l6_ls_agree <- simulate_agreement_likertskew_5item(.7, .6)
i5s7l5_ls_agree <- simulate_agreement_likertskew_5item(.7, .5)

i5_ls_agree <- rbind(i5s9l9_ls_agree,
                     i5s9l8_ls_agree,
                     i5s9l7_ls_agree,
                     i5s9l6_ls_agree,
                     i5s9l5_ls_agree,
                     i5s8l9_ls_agree,
                     i5s8l8_ls_agree,
                     i5s8l7_ls_agree,
                     i5s8l6_ls_agree,
                     i5s8l5_ls_agree,
                     i5s7l9_ls_agree,
                     i5s7l8_ls_agree,
                     i5s7l7_ls_agree,
                     i5s7l6_ls_agree,
                     i5s7l5_ls_agree)
i5_ls_agree <- as.tibble(i5_ls_agree)  

i5_ls_agree <- i5_ls_agree %>% mutate(condition = c("s9l9_ls",
                                                    "s9l8_ls",
                                                    "s9l7_ls",
                                                    "s9l6_ls",
                                                    "s9l5_ls",
                                                    "s8l9_ls",
                                                    "s8l8_ls",
                                                    "s8l7_ls",
                                                    "s8l6_ls",
                                                    "s8l5_ls",
                                                    "s7l9_ls",
                                                    "s7l8_ls",
                                                    "s7l7_ls",
                                                    "s7l6_ls",
                                                    "s7l5_ls"),
                                      nitems = rep(5, 1))

i10s9l9_ls_agree <- simulate_agreement_likertskew_10item(.9, .9)
i10s9l8_ls_agree <- simulate_agreement_likertskew_10item(.9, .8)
i10s9l7_ls_agree <- simulate_agreement_likertskew_10item(.9, .7)
i10s9l6_ls_agree <- simulate_agreement_likertskew_10item(.9, .6)
i10s9l5_ls_agree <- simulate_agreement_likertskew_10item(.9, .5)

i10s8l9_ls_agree <- simulate_agreement_likertskew_10item(.8, .9)
i10s8l8_ls_agree <- simulate_agreement_likertskew_10item(.8, .8)
i10s8l7_ls_agree <- simulate_agreement_likertskew_10item(.8, .7)
i10s8l6_ls_agree <- simulate_agreement_likertskew_10item(.8, .6)
i10s8l5_ls_agree <- simulate_agreement_likertskew_10item(.8, .5)

i10s7l9_ls_agree <- simulate_agreement_likertskew_10item(.7, .9)
i10s7l8_ls_agree <- simulate_agreement_likertskew_10item(.7, .8)
i10s7l7_ls_agree <- simulate_agreement_likertskew_10item(.7, .7)
i10s7l6_ls_agree <- simulate_agreement_likertskew_10item(.7, .6)
i10s7l5_ls_agree <- simulate_agreement_likertskew_10item(.7, .5)

i10_ls_agree <- rbind(i10s9l9_ls_agree,
                      i10s9l8_ls_agree,
                      i10s9l7_ls_agree,
                      i10s9l6_ls_agree,
                      i10s9l5_ls_agree,
                      i10s8l9_ls_agree,
                      i10s8l8_ls_agree,
                      i10s8l7_ls_agree,
                      i10s8l6_ls_agree,
                      i10s8l5_ls_agree,
                      i10s7l9_ls_agree,
                      i10s7l8_ls_agree,
                      i10s7l7_ls_agree,
                      i10s7l6_ls_agree,
                      i10s7l5_ls_agree)
i10_ls_agree <- as.tibble(i10_ls_agree)  

i10_ls_agree <- i10_ls_agree %>% mutate(condition = c("s9l9_ls",
                                                      "s9l8_ls",
                                                      "s9l7_ls",
                                                      "s9l6_ls",
                                                      "s9l5_ls",
                                                      "s8l9_ls",
                                                      "s8l8_ls",
                                                      "s8l7_ls",
                                                      "s8l6_ls",
                                                      "s8l5_ls",
                                                      "s7l9_ls",
                                                      "s7l8_ls",
                                                      "s7l7_ls",
                                                      "s7l6_ls",
                                                      "s7l5_ls"),
                                        nitems = rep(10, 1))

i15s9l9_ls_agree <- simulate_agreement_likertskew_15item(.9, .9)
i15s9l8_ls_agree <- simulate_agreement_likertskew_15item(.9, .8)
i15s9l7_ls_agree <- simulate_agreement_likertskew_15item(.9, .7)
i15s9l6_ls_agree <- simulate_agreement_likertskew_15item(.9, .6)
i15s9l5_ls_agree <- simulate_agreement_likertskew_15item(.9, .5)

i15s8l9_ls_agree <- simulate_agreement_likertskew_15item(.8, .9)
i15s8l8_ls_agree <- simulate_agreement_likertskew_15item(.8, .8)
i15s8l7_ls_agree <- simulate_agreement_likertskew_15item(.8, .7)
i15s8l6_ls_agree <- simulate_agreement_likertskew_15item(.8, .6)
i15s8l5_ls_agree <- simulate_agreement_likertskew_15item(.8, .5)

i15s7l9_ls_agree <- simulate_agreement_likertskew_15item(.7, .9)
i15s7l8_ls_agree <- simulate_agreement_likertskew_15item(.7, .8)
i15s7l7_ls_agree <- simulate_agreement_likertskew_15item(.7, .7)
i15s7l6_ls_agree <- simulate_agreement_likertskew_15item(.7, .6)
i15s7l5_ls_agree <- simulate_agreement_likertskew_15item(.7, .5)

i15_ls_agree <- rbind(i15s9l9_ls_agree,
                      i15s9l8_ls_agree,
                      i15s9l7_ls_agree,
                      i15s9l6_ls_agree,
                      i15s9l5_ls_agree,
                      i15s8l9_ls_agree,
                      i15s8l8_ls_agree,
                      i15s8l7_ls_agree,
                      i15s8l6_ls_agree,
                      i15s8l5_ls_agree,
                      i15s7l9_ls_agree,
                      i15s7l8_ls_agree,
                      i15s7l7_ls_agree,
                      i15s7l6_ls_agree,
                      i15s7l5_ls_agree)
i15_ls_agree <- as.tibble(i15_ls_agree)  

i15_ls_agree <- i15_ls_agree %>% mutate(condition = c("s9l9_ls",
                                                      "s9l8_ls",
                                                      "s9l7_ls",
                                                      "s9l6_ls",
                                                      "s9l5_ls",
                                                      "s8l9_ls",
                                                      "s8l8_ls",
                                                      "s8l7_ls",
                                                      "s8l6_ls",
                                                      "s8l5_ls",
                                                      "s7l9_ls",
                                                      "s7l8_ls",
                                                      "s7l7_ls",
                                                      "s7l6_ls",
                                                      "s7l5_ls"),
                                        nitems = rep(15, 1))

i20s9l9_ls_agree <- simulate_agreement_likertskew_20item(.9, .9)
i20s9l8_ls_agree <- simulate_agreement_likertskew_20item(.9, .8)
i20s9l7_ls_agree <- simulate_agreement_likertskew_20item(.9, .7)
i20s9l6_ls_agree <- simulate_agreement_likertskew_20item(.9, .6)
i20s9l5_ls_agree <- simulate_agreement_likertskew_20item(.9, .5)

i20s8l9_ls_agree <- simulate_agreement_likertskew_20item(.8, .9)
i20s8l8_ls_agree <- simulate_agreement_likertskew_20item(.8, .8)
i20s8l7_ls_agree <- simulate_agreement_likertskew_20item(.8, .7)
i20s8l6_ls_agree <- simulate_agreement_likertskew_20item(.8, .6)
i20s8l5_ls_agree <- simulate_agreement_likertskew_20item(.8, .5)

i20s7l9_ls_agree <- simulate_agreement_likertskew_20item(.7, .9)
i20s7l8_ls_agree <- simulate_agreement_likertskew_20item(.7, .8)
i20s7l7_ls_agree <- simulate_agreement_likertskew_20item(.7, .7)
i20s7l6_ls_agree <- simulate_agreement_likertskew_20item(.7, .6)
i20s7l5_ls_agree <- simulate_agreement_likertskew_20item(.7, .5)

i20_ls_agree <- rbind(i20s9l9_ls_agree,
                      i20s9l8_ls_agree,
                      i20s9l7_ls_agree,
                      i20s9l6_ls_agree,
                      i20s9l5_ls_agree,
                      i20s8l9_ls_agree,
                      i20s8l8_ls_agree,
                      i20s8l7_ls_agree,
                      i20s8l6_ls_agree,
                      i20s8l5_ls_agree,
                      i20s7l9_ls_agree,
                      i20s7l8_ls_agree,
                      i20s7l7_ls_agree,
                      i20s7l6_ls_agree,
                      i20s7l5_ls_agree)
i20_ls_agree <- as.tibble(i20_ls_agree)  

i20_ls_agree <- i20_ls_agree %>% mutate(condition = c("s9l9_ls",
                                                      "s9l8_ls",
                                                      "s9l7_ls",
                                                      "s9l6_ls",
                                                      "s9l5_ls",
                                                      "s8l9_ls",
                                                      "s8l8_ls",
                                                      "s8l7_ls",
                                                      "s8l6_ls",
                                                      "s8l5_ls",
                                                      "s7l9_ls",
                                                      "s7l8_ls",
                                                      "s7l7_ls",
                                                      "s7l6_ls",
                                                      "s7l5_ls"),
                                        nitems = rep(20, 1))

i25s9l9_ls_agree <- simulate_agreement_likertskew_25item(.9, .9)
i25s9l8_ls_agree <- simulate_agreement_likertskew_25item(.9, .8)
i25s9l7_ls_agree <- simulate_agreement_likertskew_25item(.9, .7)
i25s9l6_ls_agree <- simulate_agreement_likertskew_25item(.9, .6)
i25s9l5_ls_agree <- simulate_agreement_likertskew_25item(.9, .5)

i25s8l9_ls_agree <- simulate_agreement_likertskew_25item(.8, .9)
i25s8l8_ls_agree <- simulate_agreement_likertskew_25item(.8, .8)
i25s8l7_ls_agree <- simulate_agreement_likertskew_25item(.8, .7)
i25s8l6_ls_agree <- simulate_agreement_likertskew_25item(.8, .6)
i25s8l5_ls_agree <- simulate_agreement_likertskew_25item(.8, .5)

i25s7l9_ls_agree <- simulate_agreement_likertskew_25item(.7, .9)
i25s7l8_ls_agree <- simulate_agreement_likertskew_25item(.7, .8)
i25s7l7_ls_agree <- simulate_agreement_likertskew_25item(.7, .7)
i25s7l6_ls_agree <- simulate_agreement_likertskew_25item(.7, .6)
i25s7l5_ls_agree <- simulate_agreement_likertskew_25item(.7, .5)

i25_ls_agree <- rbind(i25s9l9_ls_agree,
                      i25s9l8_ls_agree,
                      i25s9l7_ls_agree,
                      i25s9l6_ls_agree,
                      i25s9l5_ls_agree,
                      i25s8l9_ls_agree,
                      i25s8l8_ls_agree,
                      i25s8l7_ls_agree,
                      i25s8l6_ls_agree,
                      i25s8l5_ls_agree,
                      i25s7l9_ls_agree,
                      i25s7l8_ls_agree,
                      i25s7l7_ls_agree,
                      i25s7l6_ls_agree,
                      i25s7l5_ls_agree)
i25_ls_agree <- as.tibble(i25_ls_agree)  

i25_ls_agree <- i25_ls_agree %>% mutate(condition = c("s9l9_ls",
                                                      "s9l8_ls",
                                                      "s9l7_ls",
                                                      "s9l6_ls",
                                                      "s9l5_ls",
                                                      "s8l9_ls",
                                                      "s8l8_ls",
                                                      "s8l7_ls",
                                                      "s8l6_ls",
                                                      "s8l5_ls",
                                                      "s7l9_ls",
                                                      "s7l8_ls",
                                                      "s7l7_ls",
                                                      "s7l6_ls",
                                                      "s7l5_ls"),
                                        nitems = rep(25, 1))

#Dichot 5050


i5s9l9_d55_agree <- simulate_agreement_dichot5050_5item(.9, .9)
i5s9l8_d55_agree <- simulate_agreement_dichot5050_5item(.9, .8)
i5s9l7_d55_agree <- simulate_agreement_dichot5050_5item(.9, .7)
i5s9l6_d55_agree <- simulate_agreement_dichot5050_5item(.9, .6)
i5s9l5_d55_agree <- simulate_agreement_dichot5050_5item(.9, .5)

i5s8l9_d55_agree <- simulate_agreement_dichot5050_5item(.8, .9)
i5s8l8_d55_agree <- simulate_agreement_dichot5050_5item(.8, .8)
i5s8l7_d55_agree <- simulate_agreement_dichot5050_5item(.8, .7)
i5s8l6_d55_agree <- simulate_agreement_dichot5050_5item(.8, .6)
i5s8l5_d55_agree <- simulate_agreement_dichot5050_5item(.8, .5)

i5s7l9_d55_agree <- simulate_agreement_dichot5050_5item(.7, .9)
i5s7l8_d55_agree <- simulate_agreement_dichot5050_5item(.7, .8)
i5s7l7_d55_agree <- simulate_agreement_dichot5050_5item(.7, .7)
i5s7l6_d55_agree <- simulate_agreement_dichot5050_5item(.7, .6)
i5s7l5_d55_agree <- simulate_agreement_dichot5050_5item(.7, .5)

i5_d55_agree <- rbind(i5s9l9_d55_agree,
                     i5s9l8_d55_agree,
                     i5s9l7_d55_agree,
                     i5s9l6_d55_agree,
                     i5s9l5_d55_agree,
                     i5s8l9_d55_agree,
                     i5s8l8_d55_agree,
                     i5s8l7_d55_agree,
                     i5s8l6_d55_agree,
                     i5s8l5_d55_agree,
                     i5s7l9_d55_agree,
                     i5s7l8_d55_agree,
                     i5s7l7_d55_agree,
                     i5s7l6_d55_agree,
                     i5s7l5_d55_agree)
i5_d55_agree <- as.tibble(i5_d55_agree)  

i5_d55_agree <- i5_d55_agree %>% mutate(condition = c("s9l9_d55",
                                                    "s9l8_d55",
                                                    "s9l7_d55",
                                                    "s9l6_d55",
                                                    "s9l5_d55",
                                                    "s8l9_d55",
                                                    "s8l8_d55",
                                                    "s8l7_d55",
                                                    "s8l6_d55",
                                                    "s8l5_d55",
                                                    "s7l9_d55",
                                                    "s7l8_d55",
                                                    "s7l7_d55",
                                                    "s7l6_d55",
                                                    "s7l5_d55"),
                                      nitems = rep(5, 1))

i10s9l9_d55_agree <- simulate_agreement_dichot5050_10item(.9, .9)
i10s9l8_d55_agree <- simulate_agreement_dichot5050_10item(.9, .8)
i10s9l7_d55_agree <- simulate_agreement_dichot5050_10item(.9, .7)
i10s9l6_d55_agree <- simulate_agreement_dichot5050_10item(.9, .6)
i10s9l5_d55_agree <- simulate_agreement_dichot5050_10item(.9, .5)

i10s8l9_d55_agree <- simulate_agreement_dichot5050_10item(.8, .9)
i10s8l8_d55_agree <- simulate_agreement_dichot5050_10item(.8, .8)
i10s8l7_d55_agree <- simulate_agreement_dichot5050_10item(.8, .7)
i10s8l6_d55_agree <- simulate_agreement_dichot5050_10item(.8, .6)
i10s8l5_d55_agree <- simulate_agreement_dichot5050_10item(.8, .5)

i10s7l9_d55_agree <- simulate_agreement_dichot5050_10item(.7, .9)
i10s7l8_d55_agree <- simulate_agreement_dichot5050_10item(.7, .8)
i10s7l7_d55_agree <- simulate_agreement_dichot5050_10item(.7, .7)
i10s7l6_d55_agree <- simulate_agreement_dichot5050_10item(.7, .6)
i10s7l5_d55_agree <- simulate_agreement_dichot5050_10item(.7, .5)

i10_d55_agree <- rbind(i10s9l9_d55_agree,
                      i10s9l8_d55_agree,
                      i10s9l7_d55_agree,
                      i10s9l6_d55_agree,
                      i10s9l5_d55_agree,
                      i10s8l9_d55_agree,
                      i10s8l8_d55_agree,
                      i10s8l7_d55_agree,
                      i10s8l6_d55_agree,
                      i10s8l5_d55_agree,
                      i10s7l9_d55_agree,
                      i10s7l8_d55_agree,
                      i10s7l7_d55_agree,
                      i10s7l6_d55_agree,
                      i10s7l5_d55_agree)
i10_d55_agree <- as.tibble(i10_d55_agree)  

i10_d55_agree <- i10_d55_agree %>% mutate(condition = c("s9l9_d55",
                                                      "s9l8_d55",
                                                      "s9l7_d55",
                                                      "s9l6_d55",
                                                      "s9l5_d55",
                                                      "s8l9_d55",
                                                      "s8l8_d55",
                                                      "s8l7_d55",
                                                      "s8l6_d55",
                                                      "s8l5_d55",
                                                      "s7l9_d55",
                                                      "s7l8_d55",
                                                      "s7l7_d55",
                                                      "s7l6_d55",
                                                      "s7l5_d55"),
                                        nitems = rep(10, 1))

i15s9l9_d55_agree <- simulate_agreement_dichot5050_15item(.9, .9)
i15s9l8_d55_agree <- simulate_agreement_dichot5050_15item(.9, .8)
i15s9l7_d55_agree <- simulate_agreement_dichot5050_15item(.9, .7)
i15s9l6_d55_agree <- simulate_agreement_dichot5050_15item(.9, .6)
i15s9l5_d55_agree <- simulate_agreement_dichot5050_15item(.9, .5)

i15s8l9_d55_agree <- simulate_agreement_dichot5050_15item(.8, .9)
i15s8l8_d55_agree <- simulate_agreement_dichot5050_15item(.8, .8)
i15s8l7_d55_agree <- simulate_agreement_dichot5050_15item(.8, .7)
i15s8l6_d55_agree <- simulate_agreement_dichot5050_15item(.8, .6)
i15s8l5_d55_agree <- simulate_agreement_dichot5050_15item(.8, .5)

i15s7l9_d55_agree <- simulate_agreement_dichot5050_15item(.7, .9)
i15s7l8_d55_agree <- simulate_agreement_dichot5050_15item(.7, .8)
i15s7l7_d55_agree <- simulate_agreement_dichot5050_15item(.7, .7)
i15s7l6_d55_agree <- simulate_agreement_dichot5050_15item(.7, .6)
i15s7l5_d55_agree <- simulate_agreement_dichot5050_15item(.7, .5)

i15_d55_agree <- rbind(i15s9l9_d55_agree,
                      i15s9l8_d55_agree,
                      i15s9l7_d55_agree,
                      i15s9l6_d55_agree,
                      i15s9l5_d55_agree,
                      i15s8l9_d55_agree,
                      i15s8l8_d55_agree,
                      i15s8l7_d55_agree,
                      i15s8l6_d55_agree,
                      i15s8l5_d55_agree,
                      i15s7l9_d55_agree,
                      i15s7l8_d55_agree,
                      i15s7l7_d55_agree,
                      i15s7l6_d55_agree,
                      i15s7l5_d55_agree)
i15_d55_agree <- as.tibble(i15_d55_agree)  

i15_d55_agree <- i15_d55_agree %>% mutate(condition = c("s9l9_d55",
                                                      "s9l8_d55",
                                                      "s9l7_d55",
                                                      "s9l6_d55",
                                                      "s9l5_d55",
                                                      "s8l9_d55",
                                                      "s8l8_d55",
                                                      "s8l7_d55",
                                                      "s8l6_d55",
                                                      "s8l5_d55",
                                                      "s7l9_d55",
                                                      "s7l8_d55",
                                                      "s7l7_d55",
                                                      "s7l6_d55",
                                                      "s7l5_d55"),
                                        nitems = rep(15, 1))

i20s9l9_d55_agree <- simulate_agreement_dichot5050_20item(.9, .9)
i20s9l8_d55_agree <- simulate_agreement_dichot5050_20item(.9, .8)
i20s9l7_d55_agree <- simulate_agreement_dichot5050_20item(.9, .7)
i20s9l6_d55_agree <- simulate_agreement_dichot5050_20item(.9, .6)
i20s9l5_d55_agree <- simulate_agreement_dichot5050_20item(.9, .5)

i20s8l9_d55_agree <- simulate_agreement_dichot5050_20item(.8, .9)
i20s8l8_d55_agree <- simulate_agreement_dichot5050_20item(.8, .8)
i20s8l7_d55_agree <- simulate_agreement_dichot5050_20item(.8, .7)
i20s8l6_d55_agree <- simulate_agreement_dichot5050_20item(.8, .6)
i20s8l5_d55_agree <- simulate_agreement_dichot5050_20item(.8, .5)

i20s7l9_d55_agree <- simulate_agreement_dichot5050_20item(.7, .9)
i20s7l8_d55_agree <- simulate_agreement_dichot5050_20item(.7, .8)
i20s7l7_d55_agree <- simulate_agreement_dichot5050_20item(.7, .7)
i20s7l6_d55_agree <- simulate_agreement_dichot5050_20item(.7, .6)
i20s7l5_d55_agree <- simulate_agreement_dichot5050_20item(.7, .5)

i20_d55_agree <- rbind(i20s9l9_d55_agree,
                      i20s9l8_d55_agree,
                      i20s9l7_d55_agree,
                      i20s9l6_d55_agree,
                      i20s9l5_d55_agree,
                      i20s8l9_d55_agree,
                      i20s8l8_d55_agree,
                      i20s8l7_d55_agree,
                      i20s8l6_d55_agree,
                      i20s8l5_d55_agree,
                      i20s7l9_d55_agree,
                      i20s7l8_d55_agree,
                      i20s7l7_d55_agree,
                      i20s7l6_d55_agree,
                      i20s7l5_d55_agree)
i20_d55_agree <- as.tibble(i20_d55_agree)  

i20_d55_agree <- i20_d55_agree %>% mutate(condition = c("s9l9_d55",
                                                      "s9l8_d55",
                                                      "s9l7_d55",
                                                      "s9l6_d55",
                                                      "s9l5_d55",
                                                      "s8l9_d55",
                                                      "s8l8_d55",
                                                      "s8l7_d55",
                                                      "s8l6_d55",
                                                      "s8l5_d55",
                                                      "s7l9_d55",
                                                      "s7l8_d55",
                                                      "s7l7_d55",
                                                      "s7l6_d55",
                                                      "s7l5_d55"),
                                        nitems = rep(20, 1))

i25s9l9_d55_agree <- simulate_agreement_dichot5050_25item(.9, .9)
i25s9l8_d55_agree <- simulate_agreement_dichot5050_25item(.9, .8)
i25s9l7_d55_agree <- simulate_agreement_dichot5050_25item(.9, .7)
i25s9l6_d55_agree <- simulate_agreement_dichot5050_25item(.9, .6)
i25s9l5_d55_agree <- simulate_agreement_dichot5050_25item(.9, .5)

i25s8l9_d55_agree <- simulate_agreement_dichot5050_25item(.8, .9)
i25s8l8_d55_agree <- simulate_agreement_dichot5050_25item(.8, .8)
i25s8l7_d55_agree <- simulate_agreement_dichot5050_25item(.8, .7)
i25s8l6_d55_agree <- simulate_agreement_dichot5050_25item(.8, .6)
i25s8l5_d55_agree <- simulate_agreement_dichot5050_25item(.8, .5)

i25s7l9_d55_agree <- simulate_agreement_dichot5050_25item(.7, .9)
i25s7l8_d55_agree <- simulate_agreement_dichot5050_25item(.7, .8)
i25s7l7_d55_agree <- simulate_agreement_dichot5050_25item(.7, .7)
i25s7l6_d55_agree <- simulate_agreement_dichot5050_25item(.7, .6)
i25s7l5_d55_agree <- simulate_agreement_dichot5050_25item(.7, .5)

i25_d55_agree <- rbind(i25s9l9_d55_agree,
                      i25s9l8_d55_agree,
                      i25s9l7_d55_agree,
                      i25s9l6_d55_agree,
                      i25s9l5_d55_agree,
                      i25s8l9_d55_agree,
                      i25s8l8_d55_agree,
                      i25s8l7_d55_agree,
                      i25s8l6_d55_agree,
                      i25s8l5_d55_agree,
                      i25s7l9_d55_agree,
                      i25s7l8_d55_agree,
                      i25s7l7_d55_agree,
                      i25s7l6_d55_agree,
                      i25s7l5_d55_agree)
i25_d55_agree <- as.tibble(i25_d55_agree)  

i25_d55_agree <- i25_d55_agree %>% mutate(condition = c("s9l9_d55",
                                                      "s9l8_d55",
                                                      "s9l7_d55",
                                                      "s9l6_d55",
                                                      "s9l5_d55",
                                                      "s8l9_d55",
                                                      "s8l8_d55",
                                                      "s8l7_d55",
                                                      "s8l6_d55",
                                                      "s8l5_d55",
                                                      "s7l9_d55",
                                                      "s7l8_d55",
                                                      "s7l7_d55",
                                                      "s7l6_d55",
                                                      "s7l5_d55"),
                                        nitems = rep(25, 1))

#Dichot 8020


i5s9l9_d82_agree <- simulate_agreement_dichot8020_5item(.9, .9)
i5s9l8_d82_agree <- simulate_agreement_dichot8020_5item(.9, .8)
i5s9l7_d82_agree <- simulate_agreement_dichot8020_5item(.9, .7)
i5s9l6_d82_agree <- simulate_agreement_dichot8020_5item(.9, .6)
i5s9l5_d82_agree <- simulate_agreement_dichot8020_5item(.9, .5)

i5s8l9_d82_agree <- simulate_agreement_dichot8020_5item(.8, .9)
i5s8l8_d82_agree <- simulate_agreement_dichot8020_5item(.8, .8)
i5s8l7_d82_agree <- simulate_agreement_dichot8020_5item(.8, .7)
i5s8l6_d82_agree <- simulate_agreement_dichot8020_5item(.8, .6)
i5s8l5_d82_agree <- simulate_agreement_dichot8020_5item(.8, .5)

i5s7l9_d82_agree <- simulate_agreement_dichot8020_5item(.7, .9)
i5s7l8_d82_agree <- simulate_agreement_dichot8020_5item(.7, .8)
i5s7l7_d82_agree <- simulate_agreement_dichot8020_5item(.7, .7)
i5s7l6_d82_agree <- simulate_agreement_dichot8020_5item(.7, .6)
i5s7l5_d82_agree <- simulate_agreement_dichot8020_5item(.7, .5)

i5_d82_agree <- rbind(i5s9l9_d82_agree,
                      i5s9l8_d82_agree,
                      i5s9l7_d82_agree,
                      i5s9l6_d82_agree,
                      i5s9l5_d82_agree,
                      i5s8l9_d82_agree,
                      i5s8l8_d82_agree,
                      i5s8l7_d82_agree,
                      i5s8l6_d82_agree,
                      i5s8l5_d82_agree,
                      i5s7l9_d82_agree,
                      i5s7l8_d82_agree,
                      i5s7l7_d82_agree,
                      i5s7l6_d82_agree,
                      i5s7l5_d82_agree)
i5_d82_agree <- as.tibble(i5_d82_agree)  

i5_d82_agree <- i5_d82_agree %>% mutate(condition = c("s9l9_d82",
                                                      "s9l8_d82",
                                                      "s9l7_d82",
                                                      "s9l6_d82",
                                                      "s9l5_d82",
                                                      "s8l9_d82",
                                                      "s8l8_d82",
                                                      "s8l7_d82",
                                                      "s8l6_d82",
                                                      "s8l5_d82",
                                                      "s7l9_d82",
                                                      "s7l8_d82",
                                                      "s7l7_d82",
                                                      "s7l6_d82",
                                                      "s7l5_d82"),
                                        nitems = rep(5, 1))

i10s9l9_d82_agree <- simulate_agreement_dichot8020_10item(.9, .9)
i10s9l8_d82_agree <- simulate_agreement_dichot8020_10item(.9, .8)
i10s9l7_d82_agree <- simulate_agreement_dichot8020_10item(.9, .7)
i10s9l6_d82_agree <- simulate_agreement_dichot8020_10item(.9, .6)
i10s9l5_d82_agree <- simulate_agreement_dichot8020_10item(.9, .5)

i10s8l9_d82_agree <- simulate_agreement_dichot8020_10item(.8, .9)
i10s8l8_d82_agree <- simulate_agreement_dichot8020_10item(.8, .8)
i10s8l7_d82_agree <- simulate_agreement_dichot8020_10item(.8, .7)
i10s8l6_d82_agree <- simulate_agreement_dichot8020_10item(.8, .6)
i10s8l5_d82_agree <- simulate_agreement_dichot8020_10item(.8, .5)

i10s7l9_d82_agree <- simulate_agreement_dichot8020_10item(.7, .9)
i10s7l8_d82_agree <- simulate_agreement_dichot8020_10item(.7, .8)
i10s7l7_d82_agree <- simulate_agreement_dichot8020_10item(.7, .7)
i10s7l6_d82_agree <- simulate_agreement_dichot8020_10item(.7, .6)
i10s7l5_d82_agree <- simulate_agreement_dichot8020_10item(.7, .5)

i10_d82_agree <- rbind(i10s9l9_d82_agree,
                       i10s9l8_d82_agree,
                       i10s9l7_d82_agree,
                       i10s9l6_d82_agree,
                       i10s9l5_d82_agree,
                       i10s8l9_d82_agree,
                       i10s8l8_d82_agree,
                       i10s8l7_d82_agree,
                       i10s8l6_d82_agree,
                       i10s8l5_d82_agree,
                       i10s7l9_d82_agree,
                       i10s7l8_d82_agree,
                       i10s7l7_d82_agree,
                       i10s7l6_d82_agree,
                       i10s7l5_d82_agree)
i10_d82_agree <- as.tibble(i10_d82_agree)  

i10_d82_agree <- i10_d82_agree %>% mutate(condition = c("s9l9_d82",
                                                        "s9l8_d82",
                                                        "s9l7_d82",
                                                        "s9l6_d82",
                                                        "s9l5_d82",
                                                        "s8l9_d82",
                                                        "s8l8_d82",
                                                        "s8l7_d82",
                                                        "s8l6_d82",
                                                        "s8l5_d82",
                                                        "s7l9_d82",
                                                        "s7l8_d82",
                                                        "s7l7_d82",
                                                        "s7l6_d82",
                                                        "s7l5_d82"),
                                          nitems = rep(10, 1))

i15s9l9_d82_agree <- simulate_agreement_dichot8020_15item(.9, .9)
i15s9l8_d82_agree <- simulate_agreement_dichot8020_15item(.9, .8)
i15s9l7_d82_agree <- simulate_agreement_dichot8020_15item(.9, .7)
i15s9l6_d82_agree <- simulate_agreement_dichot8020_15item(.9, .6)
i15s9l5_d82_agree <- simulate_agreement_dichot8020_15item(.9, .5)

i15s8l9_d82_agree <- simulate_agreement_dichot8020_15item(.8, .9)
i15s8l8_d82_agree <- simulate_agreement_dichot8020_15item(.8, .8)
i15s8l7_d82_agree <- simulate_agreement_dichot8020_15item(.8, .7)
i15s8l6_d82_agree <- simulate_agreement_dichot8020_15item(.8, .6)
i15s8l5_d82_agree <- simulate_agreement_dichot8020_15item(.8, .5)

i15s7l9_d82_agree <- simulate_agreement_dichot8020_15item(.7, .9)
i15s7l8_d82_agree <- simulate_agreement_dichot8020_15item(.7, .8)
i15s7l7_d82_agree <- simulate_agreement_dichot8020_15item(.7, .7)
i15s7l6_d82_agree <- simulate_agreement_dichot8020_15item(.7, .6)
i15s7l5_d82_agree <- simulate_agreement_dichot8020_15item(.7, .5)

i15_d82_agree <- rbind(i15s9l9_d82_agree,
                       i15s9l8_d82_agree,
                       i15s9l7_d82_agree,
                       i15s9l6_d82_agree,
                       i15s9l5_d82_agree,
                       i15s8l9_d82_agree,
                       i15s8l8_d82_agree,
                       i15s8l7_d82_agree,
                       i15s8l6_d82_agree,
                       i15s8l5_d82_agree,
                       i15s7l9_d82_agree,
                       i15s7l8_d82_agree,
                       i15s7l7_d82_agree,
                       i15s7l6_d82_agree,
                       i15s7l5_d82_agree)
i15_d82_agree <- as.tibble(i15_d82_agree)  

i15_d82_agree <- i15_d82_agree %>% mutate(condition = c("s9l9_d82",
                                                        "s9l8_d82",
                                                        "s9l7_d82",
                                                        "s9l6_d82",
                                                        "s9l5_d82",
                                                        "s8l9_d82",
                                                        "s8l8_d82",
                                                        "s8l7_d82",
                                                        "s8l6_d82",
                                                        "s8l5_d82",
                                                        "s7l9_d82",
                                                        "s7l8_d82",
                                                        "s7l7_d82",
                                                        "s7l6_d82",
                                                        "s7l5_d82"),
                                          nitems = rep(15, 1))

i20s9l9_d82_agree <- simulate_agreement_dichot8020_20item(.9, .9)
i20s9l8_d82_agree <- simulate_agreement_dichot8020_20item(.9, .8)
i20s9l7_d82_agree <- simulate_agreement_dichot8020_20item(.9, .7)
i20s9l6_d82_agree <- simulate_agreement_dichot8020_20item(.9, .6)
i20s9l5_d82_agree <- simulate_agreement_dichot8020_20item(.9, .5)

i20s8l9_d82_agree <- simulate_agreement_dichot8020_20item(.8, .9)
i20s8l8_d82_agree <- simulate_agreement_dichot8020_20item(.8, .8)
i20s8l7_d82_agree <- simulate_agreement_dichot8020_20item(.8, .7)
i20s8l6_d82_agree <- simulate_agreement_dichot8020_20item(.8, .6)
i20s8l5_d82_agree <- simulate_agreement_dichot8020_20item(.8, .5)

i20s7l9_d82_agree <- simulate_agreement_dichot8020_20item(.7, .9)
i20s7l8_d82_agree <- simulate_agreement_dichot8020_20item(.7, .8)
i20s7l7_d82_agree <- simulate_agreement_dichot8020_20item(.7, .7)
i20s7l6_d82_agree <- simulate_agreement_dichot8020_20item(.7, .6)
i20s7l5_d82_agree <- simulate_agreement_dichot8020_20item(.7, .5)

i20_d82_agree <- rbind(i20s9l9_d82_agree,
                       i20s9l8_d82_agree,
                       i20s9l7_d82_agree,
                       i20s9l6_d82_agree,
                       i20s9l5_d82_agree,
                       i20s8l9_d82_agree,
                       i20s8l8_d82_agree,
                       i20s8l7_d82_agree,
                       i20s8l6_d82_agree,
                       i20s8l5_d82_agree,
                       i20s7l9_d82_agree,
                       i20s7l8_d82_agree,
                       i20s7l7_d82_agree,
                       i20s7l6_d82_agree,
                       i20s7l5_d82_agree)
i20_d82_agree <- as.tibble(i20_d82_agree)  

i20_d82_agree <- i20_d82_agree %>% mutate(condition = c("s9l9_d82",
                                                        "s9l8_d82",
                                                        "s9l7_d82",
                                                        "s9l6_d82",
                                                        "s9l5_d82",
                                                        "s8l9_d82",
                                                        "s8l8_d82",
                                                        "s8l7_d82",
                                                        "s8l6_d82",
                                                        "s8l5_d82",
                                                        "s7l9_d82",
                                                        "s7l8_d82",
                                                        "s7l7_d82",
                                                        "s7l6_d82",
                                                        "s7l5_d82"),
                                          nitems = rep(20, 1))

i25s9l9_d82_agree <- simulate_agreement_dichot8020_25item(.9, .9)
i25s9l8_d82_agree <- simulate_agreement_dichot8020_25item(.9, .8)
i25s9l7_d82_agree <- simulate_agreement_dichot8020_25item(.9, .7)
i25s9l6_d82_agree <- simulate_agreement_dichot8020_25item(.9, .6)
i25s9l5_d82_agree <- simulate_agreement_dichot8020_25item(.9, .5)

i25s8l9_d82_agree <- simulate_agreement_dichot8020_25item(.8, .9)
i25s8l8_d82_agree <- simulate_agreement_dichot8020_25item(.8, .8)
i25s8l7_d82_agree <- simulate_agreement_dichot8020_25item(.8, .7)
i25s8l6_d82_agree <- simulate_agreement_dichot8020_25item(.8, .6)
i25s8l5_d82_agree <- simulate_agreement_dichot8020_25item(.8, .5)

i25s7l9_d82_agree <- simulate_agreement_dichot8020_25item(.7, .9)
i25s7l8_d82_agree <- simulate_agreement_dichot8020_25item(.7, .8)
i25s7l7_d82_agree <- simulate_agreement_dichot8020_25item(.7, .7)
i25s7l6_d82_agree <- simulate_agreement_dichot8020_25item(.7, .6)
i25s7l5_d82_agree <- simulate_agreement_dichot8020_25item(.7, .5)

i25_d82_agree <- rbind(i25s9l9_d82_agree,
                       i25s9l8_d82_agree,
                       i25s9l7_d82_agree,
                       i25s9l6_d82_agree,
                       i25s9l5_d82_agree,
                       i25s8l9_d82_agree,
                       i25s8l8_d82_agree,
                       i25s8l7_d82_agree,
                       i25s8l6_d82_agree,
                       i25s8l5_d82_agree,
                       i25s7l9_d82_agree,
                       i25s7l8_d82_agree,
                       i25s7l7_d82_agree,
                       i25s7l6_d82_agree,
                       i25s7l5_d82_agree)
i25_d82_agree <- as.tibble(i25_d82_agree)  

i25_d82_agree <- i25_d82_agree %>% mutate(condition = c("s9l9_d82",
                                                        "s9l8_d82",
                                                        "s9l7_d82",
                                                        "s9l6_d82",
                                                        "s9l5_d82",
                                                        "s8l9_d82",
                                                        "s8l8_d82",
                                                        "s8l7_d82",
                                                        "s8l6_d82",
                                                        "s8l5_d82",
                                                        "s7l9_d82",
                                                        "s7l8_d82",
                                                        "s7l7_d82",
                                                        "s7l6_d82",
                                                        "s7l5_d82"),
                                          nitems = rep(25, 1))

internalconsistency_agreement_simulation_results <- rbind(i5_ln_agree,
                                                          i10_ln_agree,
                                                          i15_ln_agree,
                                                          i20_ln_agree,
                                                          i25_ln_agree,
                                                          i5_ls_agree,
                                                          i10_ls_agree,
                                                          i15_ls_agree,
                                                          i20_ls_agree,
                                                          i25_ls_agree,
                                                          i5_d55_agree,
                                                          i10_d55_agree,
                                                          i15_d55_agree,
                                                          i20_d55_agree,
                                                          i25_d55_agree,
                                                          i5_d82_agree,
                                                          i10_d82_agree,
                                                          i15_d82_agree,
                                                          i20_d82_agree,
                                                          i25_d82_agree)

saveRDS(internalconsistency_agreement_simulation_results, file = "IC_agree_results.RData")

ICData %>% filter(nitems == "25") %>% print(n=60)
