library(shiny)

shinyServer(
  
  function(input, output,session) {
    
    output$myname <- renderText({
     # paste("My Name is :", input$name)
      input$name
      })
    
    output$myage <- renderText({
      # paste("My Age is : ", input$age)
      input$age
    })
    
    output$mygender <- renderText({
      #paste("My Age is : ", input$gender)
      input$gender
    })
   
    appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)

  }
)
