library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do renderPlot e plotOutput",
            hr(), # inserir uma linha
            fluidRow(
              column(width = 6, plotOutput("grafico1")),
              column(width = 6, plotOutput("grafico2"))
            )
  ) )

# server.R

server <- shinyServer(function(input, output){
  output$grafico1 <- renderPlot({
    boxplot(cars$speed, main = "Boxplot de speed")
    })
  output$grafico2 <- renderPlot({
    boxplot(cars$dist, main = "Boxplot de dist")
  })
})

# app rodando

shinyApp(ui, server)
