library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do sliderInput",
            hr(), # inserir uma linha
            # sliderInput
            sliderInput(inputId = "slider", label = "Selecione um numero",
                        min = 0, max = 100, step = 1, value = 50)
  ) )

# server.R

server <- shinyServer(function(input, output){
})

# app rodando

shinyApp(ui, server)
