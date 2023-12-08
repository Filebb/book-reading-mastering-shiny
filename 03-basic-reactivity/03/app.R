library(shiny)

df <- datasets::airquality

library(shiny)

ui <- fluidPage(
    selectInput("var", label = "Select Variable", choices = names(df)),
    textOutput("result")
)

server <- function(input, output, session) {
    selected_var   <- reactive(df[[input$var]])
    selected_range <- reactive(range(selected_var(), na.rm = TRUE))
    output$result  <- renderPrint(selected_range())
}

shinyApp(ui, server)