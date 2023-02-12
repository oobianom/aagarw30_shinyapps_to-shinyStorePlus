library(shiny)
library(shinyStorePlus)
shinyUI((fluidPage(
  initStore(),
  "Multiple Action buttons using reactiveValues() - an example",
  br(),

  mainPanel(
    actionButton("buttonuno", "Button 1"),
    actionButton("buttondos", "Button 2"),
    actionButton("buttontres", "Button 3"),
    br(),
    textOutput("display")
  )
)))
