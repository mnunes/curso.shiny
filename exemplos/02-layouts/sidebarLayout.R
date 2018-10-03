# UI
ui <- fluidPage(
  
  # Titulo do App
  titlePanel("Oi Shiny!"),
  
  sidebarLayout(
    
    # Sidebar com um slider
    sidebarPanel(
      sliderInput("obs",
                  "Numero of observacoes:",
                  min = 0,
                  max = 1000,
                  value = 500)
    ),
    
    # Mostrar o grafico gerado
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

# Server
server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}

# App rodando
shinyApp(ui, server)

