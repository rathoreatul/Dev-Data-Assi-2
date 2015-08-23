library(shiny)
shinyUI(pageWithSidebar(
  # Application Title
  	headerPanel("Kayak Rentals Lookup"),
	sidebarPanel(
	  numericInput('howmanyhours', 'Per Hour', 2, min=50,max=200,step=5),
	  submitButton('Submit')
	),
	mainPanel(
	h3('Kayak Rental Rates - $20 per hour '),
	h4('Hours you entered'),
	verbatimTextOutput('inputvalue'),
	h4('Total amount you owe in $'),
	verbatimTextOutput("hourlyvalue")
	)
))

