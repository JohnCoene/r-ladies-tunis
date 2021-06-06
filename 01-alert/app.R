library(shiny)

ui <- fluidPage(
  # import www/script.js
  tags$script(
    src = "script.js"
  ),
  h1("Shiny App"),
  textInput(
    "text",
    "Type something:"
  ),
  actionButton("show", "Show")
)

server <- function(input, output, session){

  # on button click
  # print the text input
  observeEvent(input$show, {
    print(input$text)
  })

}

shiny::shinyApp(ui, server)
