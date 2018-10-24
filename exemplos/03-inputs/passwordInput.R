library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do textInput, numericInput e passwordInput",
            hr(), # inserir uma linha
            # textInput
            textInput(inputId = "texto",
                      label = "Qual o seu nome?", value = "Preencha com o seu nome"),
            # numericInput
            numericInput(inputId = "numero",
                         label = "Escolha um numero entre 0 a 10", 
                         value = 3,
                         step = 1,
                         min = 0,
                         max = 10),
            # passwordInput
            passwordInput(inputId = "senha",
                          label = "Digite sua senha")
  )
)

# server.R:

server <- shinyServer(function(input, output){})

# app rodando

shinyApp(ui, server)
