
packages <- c("readr","tidyverse","dplyr","tidyr","ggplot2","strex","RCurl")

installed_packages <- packages %in% rownames(installed.packages())
if (any(installed_packages == FALSE)) {
  install.packages(packages[!installed_packages])
}

invisible(lapply(packages, library, character.only = TRUE))

cs_transform <- function(csv) {
  data <- read_csv(csv, col_names = FALSE)
  data <- data %>% pivot_longer(cols = starts_with("X"), values_to = "temp")
  test_length <- length(data$temp) - 1
  mins <- 0:test_length
  data$mins <- mins
  data$tempF <- 0:test_length
  for (i in 1:nrow(data))
  {
    data$tempF[i] <- (data$temp[i] * 1.8) + 32
  }
  data
}
cs_plot <- function(df1, df2, df3){
  plot(df1$tempF, col="red", xlab="Minutes", ylab="Temp (F)", pch = 1)
  points(df2$mins,df2$tempF, col="blue", pch = 1)
  points(df3$mins,df3$tempF, col="green", pch = 1)
  abline(v=(seq(0,60,10)), col="lightgray", lty="dotted")
  abline(h=105, col="red", lty="dotted")
  abline(h=(seq(80,180,10)), col="lightgray", lty="dotted")
}
cs_legend <- function(l1, l2, l3, title){
  legend(x = "bottomright", 
         legend = c(l1,l2,l3),
         pch = c(20,20,20),
         col = c("red","blue","green"))
  
  title(main=title)
}
