# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

#Repeatability Results

RepeatData$value <- as.numeric(RepeatData$value)
test_repeat <- RepeatData %>% filter(r == .5 & condition == "ln")%>% select(value, type) %>% 
  tbl_summary(by = type) %>% as_gt()

test_table <- tbl_summary(RepeatData)


s9_ln_wide_omega <- dcast(s9_ln, nitems ~ condition, value.var="omega")
s9_ln_wide_omega

test_tbl <- RepeatData %>% 
  tbl_summary(by = type, statistic = all_continuous() ~ "{mean}", missing = "no")

#next -- make condition variable just s9lX_ln