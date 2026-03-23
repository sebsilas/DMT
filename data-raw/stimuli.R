
library(tidyverse)

load("data-raw/Stimuli_Information/drumpatterns.Rda")
load("data-raw/Stimuli_Information/stimuli.Rda")


sixteenth_divisions <- seq(from = 0, to = 16, by = 0.25)

drum_matrix <- drumpatterns %>%
  filter(
    Beats %in% sixteenth_divisions,
    !Instrument %in% "CrashCymbal"
  ) %>%
  dplyr::select(Stimulus, Audiofile, Instrument, Seconds, Beats) %>%
  mutate(
    Instrument = case_when(
      Instrument %in% c("HiHatOpen", "HiHatHalfOpen") ~ "HiHat",
      TRUE ~ Instrument
    ),
    BeatPositionSixteenth = as.integer(Beats / 0.25 + 1)
  ) %>%
  # Only use a bar
  filter(BeatPositionSixteenth <= 16)



stimuli_being_used <- drum_matrix$Stimulus %>% unique()


# Check no beat info being dropped


filt_test <- drumpatterns %>%
  filter(Stimulus %in% stimuli_being_used)

filt_test %>%
  nrow()


nrow(drum_matrix) == filt_test


filt_test %>%
  filter(!Beats %in% sixteenth_divisions)


# Remove 10 and 15

drum_matrix <- drum_matrix %>%
  filter(!Stimulus %in% c(10, 22) ) %>%
  mutate(
    Instrument = case_when(
      Instrument == "SnareDrum" ~ "Snare",
      Instrument == "BassDrum" ~ "Kick",
      TRUE ~ Instrument
    )
  )



easy_stimuli_drum_matrix <- readr::read_csv("data-raw/Stimuli_Information/DMT_easy_stimuli.csv") %>%
  dplyr::select(-1) %>%
  dplyr::group_by(Stimulus) %>%
  dplyr::mutate(BeatPositionSixteenth = row_number() ) %>%
  dplyr::ungroup()  %>%
  dplyr::mutate(
    Instrument = case_when(
      Instrument == "SnareDrum" ~ "Snare",
      Instrument == "BassDrum" ~ "Kick",
      TRUE ~ Instrument
    )
  ) %>%
  dplyr::filter(Beats == 1)



usethis::use_data(drum_matrix, easy_stimuli_drum_matrix, overwrite = TRUE)

