library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do selectInput",
            hr(), # inserir uma linha
            # selectInput
            selectInput(inputId = "lista1",
                        label = "Selecine um item nessa lista",
                        choices = c("Item 1", "Item 2", "Item 3"),
                        multiple = FALSE),
            # mais um selectInput
            selectInput(inputId = "lista2",
                        label = "Selecine um ou mais itens nessa lista",
                        choices = c("Item 1", "Item 2", "Item 3"),
                        multiple = TRUE, selectize = FALSE)
  ) )

# server.R

server <- shinyServer(function(input, output){
})

# app rodando

shinyApp(ui, server)

