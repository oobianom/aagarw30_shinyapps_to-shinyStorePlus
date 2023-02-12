library(shiny)

shinyServer(function(input, output, session) {
  output$sum <- renderPrint({
    summary(iris)

  })

  output$str <- renderPrint({
    str(iris)

  })

  output$data <- renderTable({
    colm <- as.numeric(input$var)
    iris[colm]
    # head(iris)

  })

  output$myhist <- renderPlot({
    colm <- as.numeric(input$var)
    hist(
      iris[, colm],
      breaks = seq(0, max(iris[, colm]), l = input$bins + 1),
      col = input$color,
      main = "Histogram of iris dataset",
      xlab = names(iris[colm]),
      xlim = c(0, max(iris[, colm]))
    )

  })
  # Include at the bottom
  appid = "grid65"
  setupStorage(appId = appid, inputs = TRUE)
})
