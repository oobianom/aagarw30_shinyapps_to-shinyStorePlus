library(shiny)
library(shinyStorePlus)
shinyUI(fluidPage(
  initStore(),
  titlePanel("Download PDF with multi plots in Shiny - an example"),
  sidebarLayout(
    sidebarPanel(
      numericInput("plotnum","Plots multiplier",4),
      downloadButton(outputId = "down", label = "Download the plot")
      ),
    mainPanel()
  )

))
