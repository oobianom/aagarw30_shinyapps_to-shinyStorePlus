library(shiny)
shinyServer(function(input, output,session) {
  output$txt1 <- renderText({
    paste("My first name is: ", input$text1)

  })
  output$txt2 <- renderText({
   paste("My last name is :", input$text2)

  })
  # Include at the bottom
  appid = "grid38"
  setupStorage(appId = appid, inputs = TRUE)
})
