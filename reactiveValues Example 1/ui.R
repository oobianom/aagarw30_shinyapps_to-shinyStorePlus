library(shiny)
library(shinyStorePlus)
shinyUI(
  fluidPage(
    initStore(),
    tags$b("Simple counter using reactiveValues() - An example"),
    br(),
    actionButton("add1", "+ 1"),
    actionButton("sub1", "- 1"),
    numericInput("tots", "Total", 0),
    actionButton("reset", "set to 0"),
    br(),
    textOutput("count")
  )

)
