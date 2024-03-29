library(tidyverse)

co_occurring_substance_use <- c(
  str_c("F10.", seq(10, 29, 1)),
  str_c("F11.", seq(10, 29, 1)),
  str_c("F12.", seq(10, 29, 1)),
  str_c("F13.", seq(10, 29, 1)),
  str_c("F14.", seq(10, 29, 1)),
  str_c("F15.", seq(10, 29, 1)),
  str_c("F16.", seq(10, 29, 1)),
  "F17", 
  str_c("F18.", seq(10, 29, 1)),
  str_c("F19.", seq(10, 29, 1)),
  "G62.1", 
  "G72.1", 
  "I42.6", 
  "K29.20", 
  "K29.21", 
  "K70", 
  str_c("099.33", seq(0, 5, 1)),
  "P04.17", 
  "R78.3", 
  "T65.211", 
  "Z71.41", 
  "Z81.1", 
  "Z87.891"
)

co_occurring_substance_use_clean <- co_occurring_substance_use %>%
  str_to_lower() %>%
  str_remove("[.]")

co_occurring_mental_health <- c(
  "F32", 
  "F33", 
  "F40.10", 
  "F40.11", 
  "F41", 
  "F42", 
  str_c("F43.", seq(0, 12, 1)),
  "F43.0-F43.12", 
  "R45.851", 
  "T14.91XA-T14.91XS", 
  "Z91.51", 
  "Z91.52"
)

co_occurring_mental_health_clean <- co_occurring_mental_health %>%
  str_to_lower() %>%
  str_remove("[.]")
