library(shiny)

shinyServer(function(input,output){
  output$state <- renderText(input$statenames)
  # Include at the bottom
  appid = "ap221"
  setupStorage(appId = appid, inputs = TRUE)
})
