library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do renderPrint, renderText e renderTable",
            hr(), # inserir uma linha
            fluidRow(
              column(width = 5, verbatimTextOutput("summary")), 
              column(width = 4, "Qual o resultado de 2 + 2?", textOutput("texto")), 
              column(width = 3, align = "center", tableOutput("tabela"))
            )
  ) )

# server.R

server <- shinyServer(function(input, output){
  output$summary <- renderPrint({
    list(head(cars), summary(cars))
  })
  output$texto <- renderText({ 2+2
  })
  output$tabela <- renderTable({
    head(cars)
  })
  })

# app rodando

shinyApp(ui, server)
