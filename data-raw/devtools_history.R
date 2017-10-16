devtools::use_data_raw()
devtools::use_package("readxl")
devtools::use_package("assertthat")
devtools::use_package("ggplot2")
devtools::use_package("dplyr")
devtools::use_vignette("projectlola")
devtools::build_vignettes()

devtools::use_package("prenoms")
prenoms <- prenoms::prenoms
devtools::use_data(prenoms)
