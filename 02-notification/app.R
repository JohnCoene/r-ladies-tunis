library(shiny)

ui <- fluidPage(
  tags$head(
    # toastify css dependency
    tags$link(
      rel = "stylesheet",
      type = "text/css",
      href = "https://cdn.jsdelivr.net/npm/toastify-js/src/toastify.min.css"
    ),
    # our script
    tags$script(
      type = "text/javascript",
      src = "script.js"
    )
  ),
  h1("Notifications"),
  textInput("text", "Text"),
  actionButton("show", "Show"),
  # toastify js dependency
  tags$script(
    type = "text/javascript",
    src = "https://cdn.jsdelivr.net/npm/toastify-js"
  )
)

server <- function(input, output, session){

  observeEvent(input$show, {
    print(input$text)
  })

}

shinyApp(ui, server)
