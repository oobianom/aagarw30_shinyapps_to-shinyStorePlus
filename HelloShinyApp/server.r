library(shiny)

shinyServer(
  # Add shinyStorePlus
  function(input, output,session) {
    appid = "application501"
  setupStorage(appId = appid,inputs = TRUE)

  }
)
