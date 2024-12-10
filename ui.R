ui <- fluidPage(
  titlePanel("Life Expectancy Regression Analysis"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("gdp", "GDP:", 
                  min = min(regression_data$GDP, na.rm = TRUE), 
                  max = max(regression_data$GDP, na.rm = TRUE), 
                  value = median(regression_data$GDP, na.rm = TRUE)),
      sliderInput("schooling", "Schooling:", 
                  min = min(regression_data$Schooling, na.rm = TRUE), 
                  max = max(regression_data$Schooling, na.rm = TRUE), 
                  value = median(regression_data$Schooling, na.rm = TRUE)),
      sliderInput("bmi", "BMI:", 
                  min = min(regression_data$BMI, na.rm = TRUE), 
                  max = max(regression_data$BMI, na.rm = TRUE), 
                  value = median(regression_data$BMI, na.rm = TRUE)),
      sliderInput("adult_mortality", "Adult Mortality:", 
                  min = min(regression_data$Adult.Mortality, na.rm = TRUE), 
                  max = max(regression_data$Adult.Mortality, na.rm = TRUE), 
                  value = median(regression_data$Adult.Mortality, na.rm = TRUE)),
      sliderInput("alcohol", "Alcohol Consumption:", 
                  min = min(regression_data$Alcohol, na.rm = TRUE), 
                  max = max(regression_data$Alcohol, na.rm = TRUE), 
                  value = median(regression_data$Alcohol, na.rm = TRUE))
    ),
    mainPanel(
      textOutput("prediction"),
      plotOutput("regressionPlot")
    )
  )
)
