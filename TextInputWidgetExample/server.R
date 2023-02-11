library(shiny)

shinyServer(

  function(input, output, session) {

    output$myname <- renderText({
     # paste("My Name is :", input$name)
      input$name
      })

    output$myage <- renderText({
      # paste("My Age is : ", input$age)
      input$age
    })
    # Include at the bottom
    appid = "sample6"
    setupStorage(appId = appid, inputs = TRUE)
  }
)
