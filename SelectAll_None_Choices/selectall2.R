## Select All/None option for choices using checkboxInput() and updateCheckboxGroupInput()
library(shiny)
library(shinyStorePlus)
# vector with column variable names from mtcars dataset
myChoices = names(mtcars)

########## ui code begins here ###########
ui = fluidPage(
  initStore(),
  h5("Demo example - 'Select All/None' option for choices using updateCheckboxGroupInput()"),
  hr(),

  # for selectAll/None toggle checkbox
  checkboxInput('all', 'Select All/None', value = TRUE),

  # for the variables names from mtcars dataset
  checkboxGroupInput('mtcars', 'mtcars column variables', myChoices),

  verbatimTextOutput("selected") # to display the selected choices by user

)

####### server code begns here ############
server = function(input, output, session) {

  observe({

    # if input$all is TRUE (basically a SELECT ALL option), all choices will be selected
    # if input$all is FALSE (basically a NONE option), none of the choices will be selected

    updateCheckboxGroupInput(
      session, 'mtcars', choices = myChoices,
      selected = if(input$all) myChoices
      )

  })

  # Display the choices selected by the user
  output$selected <- renderText({
    paste(input$mtcars, collapse = ",")
  })

  # Include at the bottom
  appid = "applssat54on501"
  setupStorage(appId = appid, inputs = TRUE)
}

shinyApp(ui=ui, server=server)
