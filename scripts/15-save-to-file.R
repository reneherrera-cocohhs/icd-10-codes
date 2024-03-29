library(here)
library(tidyverse)
library(Rnssp)

source(file = "scripts/01-all-drugs.R")
source(file = "scripts/03-all-opioids.R")
source(file = "scripts/04-all-opioids-overdose.R")
source(file = "scripts/05-benzodiazepines.R")
source(file = "scripts/06-benzodiazepines-overdose.R")
source(file = "scripts/07-cannabis.R")
source(file = "scripts/08-cannabis-overdose.R")
source(file = "scripts/09-co-occurring-disorders.R")
source(file = "scripts/10-fentanyl-overdose.R")
source(file = "scripts/11-heroin-overdose.R")
source(file = "scripts/12-stimulants.R")
source(file = "scripts/13-stimulants-overdose.R")
source(file = "scripts/14-all-drug-overdose.R")

mylist <- mget(ls())

mylist_df <- lapply(1:length(mylist), function(i) {
  data.frame("group_name" = names(mylist)[i], "code" = mylist[[i]], stringsAsFactors = F, check.names = F)
})

icd10_codes <- do.call(rbind, mylist_df)

icd10_codes <- as_tibble(icd10_codes)

icd10 <- webscrape_icd(year = 2022) %>%
  mutate(code = str_to_lower(code))

icd10 <-  icd10 %>%
  mutate(code_clean = str_to_lower(code))

glimpse(icd10_codes)
glimpse(icd10)

icd10_codes_to_save <- left_join(
  x = icd10_codes,
  y = icd10,
  join_by("code" == "code_clean"),
  keep = FALSE
  )

icd10_codes_to_save %>%
  arrange(group_name, description)

write_csv(
  x = icd10_codes_to_save,
  file = "data/indicator-icd-10-cm-codes-drug-use-hospital.csv"
)

write_rds(
  x = icd10_codes_to_save,
  file = "data/indicator-icd-10-cm-codes-drug-use-hospital.rds"
)
