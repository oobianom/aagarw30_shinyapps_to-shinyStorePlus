library(shiny)
shinyServer(function(input, output, session){

  output$out <- renderText(
    paste("You selected the value: ", input$slide))

  # Include at the bottom
  appid = "sam67"
  setupStorage(appId = appid, inputs = TRUE)

})
