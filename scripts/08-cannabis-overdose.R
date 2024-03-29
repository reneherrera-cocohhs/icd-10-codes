library(tidyverse)

cannabis_od <- c(
  str_c("F12.12", seq(0, 9, 1)),
  str_c("F12.22", seq(0, 9, 1)),
  str_c("F12.92", seq(0, 9, 1)),
  "T40.71", 
  "T40.72"
)

cannabis_od_clean <- cannabis_od %>%
  str_to_lower() %>%
  str_remove("[.]")
