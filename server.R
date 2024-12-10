server <- function(input, output) {
  output$prediction <- renderText({
    new_data <- data.frame(
      Adult.Mortality = input$adult_mortality,
      Alcohol = input$alcohol,
      BMI = input$bmi,
      GDP = input$gdp,
      Schooling = input$schooling
    )
    predicted <- predict(model, new_data)
    paste("Predicted Life Expectancy:", round(predicted, 2))
  })
  
  output$regressionPlot <- renderPlot({
    ggplot(regression_data, aes(x = Life.expectancy, y = Predicted_Life_Expectancy)) +
      geom_point() +
      geom_abline(color = "red") +
      labs(title = "Actual vs Predicted Life Expectancy", x = "Actual", y = "Predicted")
  })
}
