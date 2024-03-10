library(tidyverse)
library(ggmap)
library(here)

outbreak_data <- readr::read_csv(here("outbreak_data.csv"))


symptoms <- outbreak_data %>% 
  select(
    firstname,
    sickness,
    shortness_of_breath,
    chills,
    palpitation,
    bloody_stools,
    pain_chest,
    pain_abdominal,
    dizziness,
    nausea,
    vomiting,
    vertigo,
    diarrhea,
    constipation,
    headache,
    pain_abdominal,
    throat_sore,
    muscle_pains
  ) %>% 
  pivot_longer(-c(firstname, sickness), names_to = "symptom", values_to = "status") 
