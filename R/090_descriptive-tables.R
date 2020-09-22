# rm(list = setdiff(ls(), lsf.str())[!(setdiff(ls(), lsf.str()) %in% 'params')])
# source(here::here('R', '002_folder-paths-and-options.R'))

#Repeatability Results

RepeatData$value <- as.numeric(RepeatData$value)
RepeatData$type <- factor(RepeatData$type, labels = c("D = 0", "D = |1|", "D > |1|"))


## To do: check into pivot wider to help format dataframe to make the table ##
## 

RepeatDataWide <- RepeatData %>% 


test1 <- RepeatData %>% gt(rowname_col = c("condition"),
                        groupname_col = c("type", "r")) %>% 
                        summary_rows(groups = TRUE,
                        columns = vars(value),
                        fns = list(avg = ~mean(.)))








repeat_r5 <- RepeatData %>% filter(r == .5 & condition == "ln") %>% dplyr::select(-r, -condition) %>% 
  tbl_summary(by = type, 
              type = value ~ "continuous", 
              statistic = all_continuous() ~ "{mean}",
              label = value ~ "r = .5") %>% 
  modify_header(stat_by = "**{level}**") 

repeat_r6 <- RepeatData %>% filter(r == .6 & condition == "ln") %>% dplyr::select(-r, -condition) %>% 
  tbl_summary(by = type, 
              type = value ~ "continuous", 
              statistic = all_continuous() ~ "{mean}",
              label = value ~ "r = .6") %>% 
  modify_header(stat_by = "**{level}**") 

repeat_r7 <- RepeatData %>% filter(r == .7 & condition == "ln") %>% dplyr::select(-r, -condition) %>% 
  tbl_summary(by = type, 
              type = value ~ "continuous", 
              statistic = all_continuous() ~ "{mean}",
              label = value ~ "r = .7") %>% 
  modify_header(stat_by = "**{level}**") 

repeat_r8 <- RepeatData %>% filter(r == .8 & condition == "ln") %>% dplyr::select(-r, -condition) %>% 
  tbl_summary(by = type, 
              type = value ~ "continuous", 
              statistic = all_continuous() ~ "{mean}",
              label = value ~ "r = .8") %>% 
  modify_header(stat_by = "**{level}**") 

repeat_r9 <- RepeatData %>% filter(r == .9 & condition == "ln") %>% dplyr::select(-r, -condition) %>% 
  tbl_summary(by = type, 
              type = value ~ "continuous", 
              statistic = all_continuous() ~ "{mean}",
              label = value ~ "r = .9") %>% 
  modify_header(stat_by = "**{level}**") 

tbl_stack_test <- tbl_stack(list(repeat_r5, repeat_r6, repeat_r7, repeat_r8, repeat_r9)) %>% 
  as_gt(include = -tab_footnote) %>% tab_header(title = "Repeatability Simulation Results")




s9_ln_wide_omega <- dcast(s9_ln, nitems ~ condition, value.var="omega")
s9_ln_wide_omega

test_tbl <- RepeatData %>% 
  tbl_summary(by = type, statistic = all_continuous() ~ "{mean}", missing = "no")

#next -- make condition variable just s9lX_ln