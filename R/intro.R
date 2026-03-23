
DMT_intro_and_training <- function(easy_stimuli_drum_matrix, tempo = 100) {

  demo_ids <- easy_stimuli_drum_matrix %>%
    dplyr::pull(Stimulus) %>%
    unique()

  n_examples <- length(demo_ids)

  psychTestR::join(

    # --------------------------------------------------
    # 1. Welcome
    # --------------------------------------------------
    psychTestR::one_button_page(
      shiny::tags$div(
        shiny::tags$p(shiny::tags$strong("Welcome to the Drum Machine Test")),
        shiny::tags$p("This test measures your musical learning ability."),
        shiny::tags$p("You will learn to recreate drum patterns using a virtual drum machine."),
        shiny::tags$p("The difficulty will adapt to your performance."),
        shiny::tags$p("Don't worry if it feels difficult at first.")
      )
    ),

    # --------------------------------------------------
    # 2. Instructions
    # --------------------------------------------------
    psychTestR::one_button_page(
      shiny::tags$div(
        dmt_ui_header(),
        shiny::tags$p(shiny::tags$strong("How it works")),
        shiny::tags$p("Each pattern consists of three layers:"),
        shiny::tags$ul(
          shiny::tags$li("Hi-hat (top row)"),
          shiny::tags$li("Snare (middle row)"),
          shiny::tags$li("Bass drum (bottom row)")
        ),
        shiny::tags$p("The grid represents one bar divided into 16 steps."),
        shiny::tags$p("Click to activate/deactivate sounds."),
        shiny::tags$p("A beep marks the beginning."),
        shiny::tags$p("Recreate the pattern as accurately as possible.")
      )
    ),

    # --------------------------------------------------
    # 3. Feedback explanation
    # --------------------------------------------------
    psychTestR::one_button_page(
      shiny::tags$div(
        dmt_ui_header(),
        shiny::tags$p(shiny::tags$strong("Feedback system")),
        shiny::tags$ol(
          shiny::tags$li("Correct / Incorrect"),
          shiny::tags$li("Which layer contains mistakes"),
          shiny::tags$li("How many mistakes per layer"),
          shiny::tags$li("Full correct pattern")
        )
      )
    ),

    # --------------------------------------------------
    # 4. Demo loop WITH FEEDBACK
    # --------------------------------------------------
    purrr::imap(demo_ids, function(stim_id, i) {

      psychTestR::join(

        # --------------------------
        # 4.1 Observe (see + hear)
        # --------------------------
        psychTestR::reactive_page(function(state, ...) {

          DMT_trial_page(
            trial_no = stim_id,
            num_trials = n_examples,
            tempo = tempo,
            show_solution = TRUE,
            show_input_grid = TRUE,
            show_play_buttons = TRUE,
            demo = TRUE,
            stimulus_drum_matrix = easy_stimuli_drum_matrix
          )

        }),

        psychTestR::code_block(function(state, ...) {
          psychTestR::set_global("reset_dmt", TRUE, state)
        }),

        # --------------------------
        # 4.2 Instruction
        # --------------------------
        psychTestR::one_button_page(
          shiny::tags$p("Now try to recreate this pattern yourself."),
          button_text = "Start"
        ),

        # --------------------------
        # 4.3 Learning loop
        # --------------------------
        psychTestR::join(

          psychTestR::code_block(function(state, ...) {
            psychTestR::set_local("attempt", 1L, state)
          }),

          psychTestR::while_loop(

            test = while_logic(stim_id),

            logic = list(

              # --------------------------
              # Trial attempt
              # --------------------------
              psychTestR::reactive_page(function(state, ...) {

                attempt <- psychTestR::get_local("attempt", state)

                DMT_trial_page(
                  trial_no = stim_id,
                  num_trials = n_examples,
                  tempo = tempo,
                  attempt = attempt,
                  demo = TRUE,
                  show_solution = FALSE,
                  show_input_grid = TRUE,
                  show_play_buttons = TRUE,
                  stimulus_drum_matrix = easy_stimuli_drum_matrix
                )

              }),

              # --------------------------
              # Feedback (reuse yours!)
              # --------------------------
              DMT_feedback(stim_id, n_examples, tempo, easy_stimuli_drum_matrix, demo = TRUE),

              # --------------------------
              # Increment attempt
              # --------------------------
              psychTestR::code_block(function(state, ...) {
                attempt <- psychTestR::get_local("attempt", state)
                psychTestR::set_local("attempt", attempt + 1L, state)
              })

            )
          )
        ),

        # --------------------------
        # 4.4 Transition
        # --------------------------
        psychTestR::one_button_page(
          shiny::tags$p(
            if (i < n_examples) {
              "Good! Let's try another example."
            } else {
              "Great! You're ready for the main task."
            }
          ),
          button_text = if (i < n_examples) "Next example" else "Start main task"
        )

      )

    }) %>% unlist(recursive = FALSE)

  )
}
