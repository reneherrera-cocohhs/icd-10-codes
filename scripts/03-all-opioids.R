library(tidyverse)

all_opioids <- c(
  "F11", 
  "P04.14", 
  "P96.1", 
  "R78.1", 
  str_c("T40.", seq(0, 4, 1)),
  str_c("T40.42", seq(1, 4, 1)),
  str_c("T40.49", seq(1, 6, 1)),
  str_c("T40.6", seq(0, 9, 1)),
  "Z79.891"
)


all_opioids_clean <- all_opioids %>%
  str_to_lower() %>%
  str_remove("[.]")
