library(shiny)

shinyServer(
  
  function(input, output,session) {
    appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)

  }
)
