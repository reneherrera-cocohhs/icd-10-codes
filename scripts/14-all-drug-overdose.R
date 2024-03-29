library(here)
library(tidyverse)


source(file = "scripts/04-all-opioids-overdose.R")
source(file = "scripts/06-benzodiazepines-overdose.R")
source(file = "scripts/08-cannabis-overdose.R")
source(file = "scripts/10-fentanyl-overdose.R")
source(file = "scripts/11-heroin-overdose.R")
source(file = "scripts/13-stimulants-overdose.R")


mget(ls(pattern = "_od"))


all_drug_od <- c(
  mget(ls(pattern = "_od"))
) 

all_drug_od <- as.character(flatten(all_drug_od))

all_drug_od_clean <- all_drug_od %>%
  str_to_lower() %>%
  str_remove("[.]")
