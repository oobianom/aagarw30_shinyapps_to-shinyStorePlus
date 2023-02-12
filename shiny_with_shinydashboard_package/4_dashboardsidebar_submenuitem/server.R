library(shiny)
library(shinydashboard)

shinyServer(function(input, output, session){
  # Include at the bottom
  appid = "shinydash1013"
  setupStorage(appId = appid, inputs = TRUE)
}
)
