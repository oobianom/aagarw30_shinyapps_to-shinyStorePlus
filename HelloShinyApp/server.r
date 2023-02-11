library(shiny)

shinyServer(
  
  function(input, output) {
    appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)

  }
)
