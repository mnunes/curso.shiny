
function(input, output, session) {
  
  # Combine the selected variables into a new data frame
  selectedData <- reactive({
    bm %>%
      select(x=input$xcol, y=input$ycol, Ano) %>%
      filter(Ano >= input$slider_ano[1]) %>%
      filter(Ano <= input$slider_ano[2])
  })
  
  output$plot1 <- renderPlotly({
    if(input$faceta){
      ggplotly(ggplot(selectedData(), aes(x=x, y=y)) +
        geom_point() +
        labs(x=as.character(input$xcol), y=as.character(input$ycol)) +
        facet_wrap(~ Ano))
    } else {
      ggplotly(ggplot(selectedData(), aes(x=x, y=y)) +
        geom_point() +
        labs(x=as.character(input$xcol), y=as.character(input$ycol)))
      }
  })
  
}


