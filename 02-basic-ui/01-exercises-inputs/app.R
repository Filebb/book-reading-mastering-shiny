library(shiny)
library(lubridate)

choices <- list(`Europe` = c("Italy", "France", "Germany", "United Kingdom"),
                `Americas` = c("USA", "Canada", "Mexico"))

ui <- fluidPage(
    textInput("name",
              label       = "What is your name?",
              placeholder = "Your name"),
    sliderInput("date", "When should we deliver?",
                value = ymd("2020-09-17"),
                min   = ymd("2020-09-16"),
                max   = ymd("2020-09-23")),
    sliderInput("ex3",
                "Exercise 3",
                value = 0, min = 0, max = 100, step = 5, animate = TRUE),
    selectInput("ex4",
                label = "Select a country:",
                choices = choices)

)

server <- function(input, output, session) {
}

shinyApp(ui, server)
