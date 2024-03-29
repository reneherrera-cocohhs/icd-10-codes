library(tidyverse)

stimulants_od <- c(
  str_c("F14.12", seq(0, 9, 1)),
  str_c("F14.22", seq(0, 9, 1)),
  str_c("F14.92", seq(0, 9, 1)),
  str_c("F15.12", seq(0, 9, 1)),
  str_c("F15.22", seq(0, 9, 1)),
  str_c("F15.92", seq(0, 9, 1)),
  str_c("T40.5X", seq(1, 4, 1)),
  str_c("T43.60", seq(1, 4, 1)),
  str_c("T43.61", seq(1, 4, 1)),
  str_c("T43.62", seq(1, 4, 1)),
  str_c("T43.63", seq(1, 4, 1)),
  str_c("T43.64", seq(1, 4, 1)),
  str_c("T43.65", seq(1, 4, 1)),
  str_c("T43.69", seq(1, 4, 1))
)

stimulants_od_clean <- stimulants_od %>%
  str_to_lower() %>%
  str_remove("[.]")
