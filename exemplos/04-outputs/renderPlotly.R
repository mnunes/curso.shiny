library(shiny)
library(plotly)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do renderPlotly e do renderDygraph",
            hr(), # inserir uma linha
            fluidRow(
              column(6, plotlyOutput("grafico1", width = 800))
            )
  ) )

# server.R

server <- shinyServer(function(input, output){
  output$grafico1 <- renderPlotly({
    plot_ly(data = iris, x = ~Petal.Length, y = ~Petal.Width, symbol = ~Species)
  })
})

# app rodando

shinyApp(ui, server)
