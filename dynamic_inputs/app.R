library(shiny)
library(shinyStorePlus)

ui <- fluidPage(
  initStore(),
  titlePanel("On storing dynamically generated inputs"),
  p(tags$b("Refresh the page after changing inputs - the value of the hard coded and dynamic inputs are retained", style="color:brown;font-size:20px")),
  hr(),
  selectInput("sel_not0", "Color (should not be stored):", choices = c("","brown", "green", "blue", "red", "yellow", "cyan"), selected = ""),
  selectInput("sel_color", "Color (should be stored):", choices = c("", "green", "blue", "red", "yellow", "cyan"), selected = ""),
  uiOutput("ui_moreinputs"),
  uiOutput("ui_moreinputs2"),
  actionButton("buton1","Click me to show another select"),
  uiOutput("ui_moreinputs3"),
  uiOutput("ui_moreinputs4"))

server <- function(input, output, session) {
  observe({
    output$ui_moreinputs <- renderUI(
      selectInput("sel_month", "Month (dynamically generated - should be stored):", choices = c("", month.name), selected = "")
    )

    output$ui_moreinputs2 <- renderUI(
      selectInput("sel_not1", "Month (dynamically generated - should Not stored):", choices = c("", month.name), selected = "")
    )
  })

  observeEvent(input$buton1,{
    output$ui_moreinputs3 <- renderUI(
      selectInput("sel_month2", "Month (dynamically generated - should be stored):", choices = c("", month.name), selected = "")
    )

    output$ui_moreinputs4 <- renderUI(
      selectInput("sel_not2", "Month (dynamically generated - should be NOT stored):", choices = c("", month.name), selected = "")
    )
  })

  setupStorage(appId = "shinytest0012", inputs = list("sel_color"), dyn.inputs = list("sel_month","sel_month2"), session = session)
}

shinyApp(ui = ui, server = server, options = list(launch.browser = TRUE))
