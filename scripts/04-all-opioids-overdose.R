library(tidyverse)

all_opioids_od <- c(
  str_c("F11.12", seq(0, 9, 1)),
  str_c("F11.22", seq(0, 9, 1)),
  str_c("F11.92", seq(0, 9, 1)),
  str_c("T40.", seq(0, 4, 1)),
  "T40.6"
)


all_opioids_od_clean <- all_opioids_od %>%
  str_to_lower() %>%
  str_remove("[.]")
