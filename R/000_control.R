 
renv::init()
 
rmarkdown::render(here::here('R', '000_master.Rmd'))
 
fs::file_move(here::here('R', '000_master.Rmd'), here::here('Reports', 'Nice_name_of_report_2020-02-11.html'))
