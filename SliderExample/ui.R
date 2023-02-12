library(shiny)
library(shinyStorePlus)
shinyUI(fluidPage(
  initStore(),
  titlePanel("Demostration of sliderInput widget in shiny"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("slide", "Select the value from Slider", min = 0, max=5, value=2, step=0.2)

      ),
    mainPanel(

      textOutput("out")
      )

    )
  ))
