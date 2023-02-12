library(shiny)
library(shinydashboard)

shinyServer(function(input, output, session){
  # Include at the bottom
  appid = "shinydash1010"
  setupStorage(appId = appid, inputs = TRUE)
}
)
