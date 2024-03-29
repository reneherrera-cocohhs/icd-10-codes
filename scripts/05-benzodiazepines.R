library(tidyverse)

benzo <- c(
  "F13", 
  "P04.17", 
  "P04.1A", 
  "T42.4X"
)


benzo_clean <- benzo %>%
  str_to_lower() %>%
  str_remove("[.]")
