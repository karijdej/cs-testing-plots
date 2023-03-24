library(readr)
library(tidyverse)
library(dplyr)
library(tidyr)
library(ggplot2)
  
# 3/23/2023
# box #1, standard reflectix
# fan heater fixed - box not fully cooled
{
control2 <- read_csv("C:/Users/Dennis/Documents/Phantom/cs_data/control2.csv", col_names = FALSE)
  control2 <- control2 %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(control2$temp) - 1
  mins <- 0:test_length
  control2$mins <- mins
  control2$tempF <- 0:test_length
  for (i in 1:nrow(control2))
  {
    control2$tempF[i] <- (control2$temp[i] * 1.8) + 32
  }
}

# 3/24/2023
# box #2
#standard reflectix
{
control3 <- read_csv("C:/Users/Dennis/Documents/Phantom/cs_data/control3.csv", col_names = FALSE)
  control3 <- control3 %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(control3$temp) - 1
  mins <- 0:test_length
  control3$mins <- mins
  control3$tempF <- 0:test_length
  for (i in 1:nrow(control3))
  {
    control3$tempF[i] <- (control3$temp[i] * 1.8) + 32
  }
}
  
# 3/23/2023
# r&d box
# full 1/2" Styrofoam insulation + reflectix
{
full_insulation <- read_csv("C:/Users/Dennis/Documents/Phantom/cs_data/full_insulation.csv", col_names = FALSE)
  full_insulation <- full_insulation %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(full_insulation$temp) - 1
  mins <- 0:test_length
  full_insulation$mins <- mins
  full_insulation$tempF <- 0:test_length
  for (i in 1:nrow(full_insulation))
  {
    full_insulation$tempF[i] <- (full_insulation$temp[i] * 1.8) + 32
  }
}
  
# 3/24/2023
# box #1
# 1/2" polyiso foam above light shield
{
top_insulation <- read_csv("C:/Users/Dennis/Documents/Phantom/cs_data/top_insulation.csv", col_names = FALSE)
  top_insulation <- top_insulation %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(top_insulation$temp) - 1
  mins <- 0:test_length
  top_insulation$mins <- mins
  top_insulation$tempF <- 0:test_length
  for (i in 1:nrow(top_insulation))
  {
    top_insulation$tempF[i] <- (top_insulation$temp[i] * 1.8) + 32
  }
}
  
plot(full_insulation$mins,full_insulation$tempF, col="red", xlab="Minutes", ylab="Temp (F)", pch = 1)

  #points(control2$mins,control2$tempF, col="blue", pch = 1)
  
  points(control3$mins,control3$tempF, col="blue", pch = 1)
  
  points(top_insulation$mins,top_insulation$tempF, col="green", pch = 1)

  abline(v=(seq(0,60,10)), col="lightgray", lty="dotted")
  abline(h=105, col="red", lty="dotted")
  abline(h=(seq(80,180,10)), col="lightgray", lty="dotted")
  
  legend(x = "bottomright", 
         legend = c("Standard Reflectix","Full Foam Insulation","Roof Insulation"),
         pch = c(20,20,20),
         col = c("blue","red","green"))
  
  title(main="Temperature Differences Between Insulation Configurations")
   