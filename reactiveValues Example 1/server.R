library(shiny)
shinyServer(
  function(input, output, session) {
    counter <- reactiveValues(countervalue = 0) # Defining & initializing the reactiveValues object

    observeEvent(input$add1, {
      counter$countervalue <- counter$countervalue + 1 # if the add button is clicked, increment the value by 1 and update it
      updateTextInput(session, "tots", value = counter$countervalue)
    })
    observeEvent(input$sub1, {
      counter$countervalue <- counter$countervalue - 1 # if the sub button is clicked, decrement the value by 1 and update it
      updateTextInput(session, "tots", value = counter$countervalue)
    })
    observeEvent(input$reset, {
      updateTextInput(session, "tots", value = 0)
    })

    observeEvent(input$tots, {
      counter$countervalue <-input$tots
    })

    output$count <- renderText({
      paste("Counter Value is ", input$tots) # print the latest value stored in the reactiveValues object
    })

    # Include at the bottom
    appid <- "add601"
    setupStorage(appId = appid, inputs = TRUE)
  }
)
