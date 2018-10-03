fluidPage(
  
  # Titulo do App
  titlePanel("Estatísticas dos Pokémons"),
  
  sidebarLayout(
    
    # Sidebar with a slider input
    sidebarPanel(
      sliderInput("obs",
                  "Number of observations:",
                  min = 0,
                  max = 1000,
                  value = 500)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)


