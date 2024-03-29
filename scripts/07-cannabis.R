library(tidyverse)

cannabis <- c(
  "F12", 
  "P04.81", 
  "T40.71",
  "T40.72"
)


cannabis_clean <- cannabis %>%
  str_to_lower() %>%
  str_remove("[.]")
