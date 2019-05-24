## Libs ----
pacman::p_load(tidyverse)

## Read in data ----
worldcup_2010  <- read_csv("inst/extdata/World cup 2010_team.csv")
worldcup_2010

## Transpose ----
worldcup_2010  <-
  worldcup_2010 %>%
  pivot_longer(-Team) %>%
  pivot_wider(names_from = Team, values_from = value)

## Change first column name ----
colnames(worldcup_2010)[1]  <- "Country"

## Save data ----
usethis::use_data(worldcup_2010, overwrite = TRUE)
