library(projmgr)

r_dev <- create_repo_ref('Bartesto', 'rivRmon_development')

template_yaml()

t <- ymd_hms("2020-06-30 12:00:00", tz = "Australia/Perth")
my_plan <- read_plan("./riv_dev_plan.yml")
str(my_plan)

post_plan(r_dev, my_plan)


file_path <- system.file("extdata", "plan.yml", package = "projmgr", mustWork = TRUE)
her_plan <- read_plan(file_path)
post_plan(r_dev, her_plan)
