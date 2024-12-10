library(ggplot2)
library(dplyr)
library(shiny)

data <- read.csv("Life_Expectancy_Data.csv")

regression_data <- data %>%
  select(Life.expectancy, Adult.Mortality, Alcohol, BMI, GDP, Schooling) %>%
  na.omit()

model <- lm(Life.expectancy ~ Adult.Mortality + Alcohol + BMI + GDP + Schooling, data = regression_data)

regression_data$Predicted_Life_Expectancy <- predict(model, regression_data)
