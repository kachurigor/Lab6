library(shiny)
library(car)
shinyServer(function(input, output) {
	values <- reactiveValues()
	observe({
		input$Calculate_the_value
		values$Calculated_value_euro <- isolate(input$Amount_of_money) / 32
	  values$Calculated_value_usd <- isolate(input$Amount_of_money) / 27.26
	  values$Calculated_value_zlot <- isolate(input$Amount_of_money) / 7.59})
    output$Calculated_value_euro <- renderText({
    if(input$Calculate_the_value == 0) ""
    else paste("Євро:", values$Calculated_value_euro)})
    output$Calculated_value_usd <- renderText({
    if(input$Calculate_the_value == 0) ""
    else paste("Доллар США:", values$Calculated_value_usd)})
    output$Calculated_value_zlot <- renderText({
    if(input$Calculate_the_value == 0) ""
    else paste("Польський злотий:", values$Calculated_value_zlot)})
})