library(shiny)
calhrvalue <- function(howmanyhours) howmanyhours * 20

shinyServer(
  function(input,output){
  output$inputvalue <- renderPrint({input$howmanyhours})
  output$hourlyvalue <- renderPrint({calhrvalue(input$howmanyhours)})
  }
)
