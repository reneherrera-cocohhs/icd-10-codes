library(tidyverse)

stimulants <- c(
  "F14", 
  "F15", 
  "P04.16", 
  "P04.41", 
  "R78.2", 
  str_c("T40.5X", seq(1, 6, 1)),
  str_c("T43.", seq(601, 696, 1))
)

stimulants_clean <- stimulants %>%
  str_to_lower() %>%
  str_remove("[.]")
