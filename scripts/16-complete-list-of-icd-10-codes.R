library(here)
library(tidyverse)
library(Rnssp)

icd10 <- webscrape_icd(year = 2022) %>%
  mutate(code_clean = str_to_lower(code))

write_rds(
  x = icd10,
  file = "data/icd-10-codes-year-2022.rds"
)
