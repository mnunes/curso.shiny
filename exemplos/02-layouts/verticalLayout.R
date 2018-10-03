if (interactive()) {
  
  ui <- fluidPage(
    verticalLayout(
      a(href="https://marcusnunes.me/", "Meu Site"),
      a(href="https://google.com.br/", "Google"),
      a(href="https://cran.r-project.org/", "R")
    )
  )
  shinyApp(ui, server = function(input, output) { })
}

