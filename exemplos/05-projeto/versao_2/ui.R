pageWithSidebar(
  headerPanel('Banco Mundial'),
  sidebarPanel(
    selectInput('xcol', 'Eixo X', c("PIB_Capita", "PIB"),
                selected="PIB_Capita"),
    selectInput('ycol', 'Eixo Y', c("ExpectativaVida", "Populacao"),
                selected="ExpectativaVida"),
    sliderInput(inputId = "slider_ano", label = "Selecione um ano",
                min = 2009, max = 2012, step = 1, value = c(2009, 2012)),
    checkboxInput(inputId = "faceta",
                  label = "Faceta?", 
                  value = TRUE)
  ),
  mainPanel(
    plotlyOutput('plot1')
  )
)

