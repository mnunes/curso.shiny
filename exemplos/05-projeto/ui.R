pageWithSidebar(
  headerPanel('Banco Mundial'),
  sidebarPanel(
    selectInput('xcol', 'X Variable', c("PIB_Capita", "Pobreza")),
    selectInput('ycol', 'Y Variable', c("ExpectativaVida", "Fertilidade"),
                selected=names(bm)[[2]]),
    sliderInput(inputId = "slider", label = "Ano",
                min = 2009, max = 2012, step = 1, value = c(2009, 2012))
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

