fluidPage(
  sliderInput(inputId = "num", 
              label = "Escolha um numero", 
              value = 25, min = 1, max = 100),
  plotOutput("hist")
)
