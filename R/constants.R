
dmt_resources <- function() {
  shiny::addResourcePath("audio", system.file('extdata/audio', package = "DMT"))

  shiny::addResourcePath("css", system.file("css", package = "DMT"))

  shiny::addResourcePath("js", system.file("js", package = "DMT"))

}

dmt_ui_header <- function(load_tone_js = TRUE) {
  shiny::tags$head(
    shiny::tags$link(rel = "icon", href = "data:,"),

    if (load_tone_js)
      shiny::tags$script(src = "https://cdnjs.cloudflare.com/ajax/libs/tone/14.8.49/Tone.js"),

    shiny::tags$link(rel = "stylesheet", type = "text/css", href = "css/dmt.css")
  )
}
