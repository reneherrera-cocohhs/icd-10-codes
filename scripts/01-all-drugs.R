library(tidyverse)

all_drugs <- c(
  "F11", 
  "F12", 
  "F13", 
  "F14", 
  "F15", 
  "F16", 
  "F17", 
  "F18", 
  "F19",
  str_c("P04.", seq(0, 2, 1)),
  str_c("P04.", seq(40, 49, 1)),
  "P04.5", 
  "P04.81", 
  "P96.1", 
  "P96.2", 
  str_c("R78.", seq(1, 6, 1)),
  "T36", 
  "T37", 
  "T38", 
  "T39", 
  "T40", 
  "T41", 
  "T42", 
  "T43", 
  "T44", 
  "T45", 
  "T46", 
  "T47", 
  "T48", 
  "T49", 
  "T50", 
  str_c("Z79.0", seq(1, 9, 1)),
  str_c("Z79.", seq(1, 52, 1)),
  "Z79.810",
  str_c("Z79.", seq(81, 84, 1)),
  str_c("Z79.", seq(890, 899, 1))
)

all_drugs_clean <- all_drugs %>%
  str_to_lower() %>%
  str_remove("[.]")
