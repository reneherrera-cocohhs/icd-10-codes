library(tidyverse)

benzo_od <- c(
  str_c("F13.12", seq(0, 9, 1)),
  str_c("F13.22", seq(0, 9, 1)),
  str_c("F13.92", seq(0, 9, 1)),
  "T42.4X"
)


benzo_od_clean <- benzo_od %>%
  str_to_lower() %>%
  str_remove("[.]")
