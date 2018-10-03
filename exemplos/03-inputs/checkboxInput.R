library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(), # inserir uma linha
            "Uso do checkboxInput",
            hr(), # inserir uma linha
            # checkboxInput
            checkboxInput(inputId = "check_titulo",
                          label = "Histograma Azul", 
                          value = TRUE),
            # output
            plotOutput("histograma")
  )
)

# server.R

server <- shinyServer(function(input, output){ 
  output$histograma <- renderPlot({
    x <- cars[, 1]
    if(input$check_titulo){
      hist(x, main = "Histograma de speed", col="blue")
  } else {
    hist(x, main = "Histograma de speed")
    }
    }
  )}
  )



shinyApp(ui, server)
