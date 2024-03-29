library(tidyverse)

heroin_od <- c(
  str_c("T40.1X", seq(1, 4, 1))
)

heroin_od_clean <- heroin_od %>%
  str_to_lower() %>%
  str_remove("[.]")
