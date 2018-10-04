library(shiny)

# ui.R

ui <- fluidPage(
  sliderInput("obs", "Numero de observacoes", min=0, max=1000, value=500, step=1),
  actionButton("gerarDist", "Gerar distribuicao"),
  plotOutput("distPlot")
)

# server.R

server <- function(input, output) {
  output$distPlot <- renderPlot({
    input$gerarDist
    
    # Use isolate() to avoid dependency on input$obs
    distribuicao <- isolate(rnorm(input$obs))
    hist(distribuicao, main="Histograma da Distribuicao")
  })
}

# app rodando

shinyApp(ui, server)
