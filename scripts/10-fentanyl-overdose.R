library(tidyverse)

fentanyl_od <- c(
  str_c("T40.41", seq(1, 4, 1))
)

fentanyl_od_clean <- fentanyl_od %>%
  str_to_lower() %>%
  str_remove("[.]")
