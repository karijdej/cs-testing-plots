library(readr)
library(tidyverse)
library(dplyr)
library(tidyr)

# 3/21/2023
# top box facing desks
control <- read_csv("Phantom/cs_data/control.csv", col_names = FALSE)
  control <- control %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(control$temp) - 1
  mins <- 0:test_length
  control$mins <- mins
  control$tempF <- 1:65
  for (i in 1:nrow(control))
  {
    control$tempF[i] <- (control$temp[i] * 1.8) + 32
  }
  plot(control$mins,control$tempF)

  
  