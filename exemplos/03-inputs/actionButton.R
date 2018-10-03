library(shiny)

# ui.R

ui <- shinyUI(
  fluidPage(title = "Inputs e Outputs com Shiny",
            hr(),  # inserir uma linha
            "Uso do actionLink e actionButton",
            hr(), # inserir uma linha
            # actionButton
            actionButton(inputId = "botao", label = "Clique Aqui"),
            # actionLink
            actionLink(inputId = "link", label = "Clique Aqui")
  ) )

# server.R

server <- shinyServer(function(input, output){
  download.file("https://github.com/mnunes/curso.shiny/blob/master/slides/slides.pdf")
})

# app rodando

shinyApp(ui, server)
