library(shiny)
shinyUI(fluidPage(
  titlePanel("Конвертор валюти"),
  sidebarLayout(
    sidebarPanel(
      numericInput("Amount_of_money",label = h6("Введіть суму в гривнях"),value = 50),
      br(),
      actionButton("Calculate_the_value", label = "Конвертувати в іноземну валюту")        
    ),
    mainPanel("",p(h5("Розрахована валюта:")),
      textOutput("Calculated_value_euro"),
      textOutput("Calculated_value_usd"),
      textOutput("Calculated_value_zlot")
    )
  )
))