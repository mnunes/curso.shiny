# global

library(shiny)

# ui.R

ui <- fluidPage(
  sliderInput(inputId = "num", 
              label = "Escolha um numero", 
              value = 25, min = 1, max = 100),
  plotOutput("hist")
)

# server.R

server <- function(input, output) {
  output$hist <- renderPlot({
    hist(rnorm(input$num))
  })
}

# app rodando

shinyApp(ui, server)
