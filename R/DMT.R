


#' Standalone Drum Machine Test
#'
#' @param tempo
#' @param num_trials
#' @param num_example_trials
#'
#' @returns
#' @export
#'
#' @examples
DMT_standalone <- function(tempo = 100,
                           num_trials = 5L,
                           num_example_trials = 3) {
  DMT(tempo = tempo,
      num_trials = num_trials,
      num_example_trials = num_example_trials) %>%
    psychTestR::make_test(
      opt = psychTestR::test_options(
        title = "Drum Machine Test",
        admin_password = "test",
        researcher_email = "sebastian.silas@uni_hamburg.de",
        display = psychTestR::display_options(full_screen = TRUE),
        additional_scripts = "https://cdnjs.cloudflare.com/ajax/libs/tone/14.8.49/Tone.js"
      )
    )
}

#' Embed Drum Machine Test in battery
#'
#' @param num_trials
#' @param tempo
#' @param num_example_trials
#'
#' @returns
#' @export
#'
#' @examples
DMT <- function(num_trials = 5L, tempo = 100, num_example_trials = 3) {

  easy_stimuli_drum_matrix <- easy_stimuli_drum_matrix %>%
    dplyr::filter(Stimulus %in% 1:num_example_trials)

  # Setup resource paths
  dmt_resources()

  psychTestR::join(

    # Intro
    DMT_intro_and_training(easy_stimuli_drum_matrix, tempo),

    # Main Trials
    purrr::map(1:num_trials, ~ DMT_page_loop(.x, num_trials, tempo)) %>% unlist(),

    psychTestR::final_page("You have finished the Drum Machine Test!")
  )
}



