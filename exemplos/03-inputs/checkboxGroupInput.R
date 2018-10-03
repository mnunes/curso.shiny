library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do checkboxGroupInput",
            hr(), # inserir uma linha
            # checkboxGroupInput
            checkboxGroupInput(inputId = "opcoes",
                               label = "Estatisticas descritivas:", choices = c("Minimo", "Q1", "Mediana", "Q3", "Maximo"), 
                               selected = c("Mediana")),
            # output
            plotOutput("grafico")
  ) )

# server.R:

server <- shinyServer(function(input, output){
    output$grafico <- renderPlot({
      # dados do conjunto cars
      plot(cars, main = "Grafico de dispersao cars", xlab="velocidade", ylab="distancia")
      if("Minimo" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0), col = heat.colors(5)[1], lty = 2) 
        text(5, quantile(cars$dist, 0) + 2, "Minimo", col = heat.colors(5)[1])
      }
      if("Q1" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.25), col = heat.colors(5)[2], lty = 2) 
        text(5, quantile(cars$dist, 0.25) + 2, "Q1", col = heat.colors(5)[2])
      }
      if("Mediana" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.50), col = heat.colors(5)[3], lty = 2) 
        text(5, quantile(cars$dist, 0.50) + 2, "Mediana", col = heat.colors(5)[3])
      }
      if("Q3" %in% input$opcoes){
        abline(h = quantile(cars$dist, 0.75), col = heat.colors(5)[4], lty = 2) 
        text(5, quantile(cars$dist, 0.75) + 2, "Q3", col = heat.colors(5)[4])
      }
      if("Maximo" %in% input$opcoes){
        abline(h = quantile(cars$dist, 1), col = heat.colors(5)[5], lty = 2) 
        text(5, quantile(cars$dist, 1) + 2, "Maximo", col = heat.colors(5)[5])
      }
      })
  })

# app rodando

shinyApp(ui, server)
