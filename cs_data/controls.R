
# control 2
# 3/23/2023
# box #1, standard reflectix
# fan heater fixed - box not fully cooled - DONT USE
#control2 <- cs_transform("control2.csv")

# control 3
# 3/24/2023
# box #2
# standard reflectix
control_box2 <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/control3.csv?token=GHSAT0AAAAAACAR36BOFW7Q7V4NX5AJ63X2ZBLE3YQ"
  )

# control 4
# 4/3/2023
# box #4
# standard reflectix
control_box4 <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/control4.csv?token=GHSAT0AAAAAACAR36BPJ7MSDJQYZ6E4CYUKZBLE46A"
)
  # fix temp collection error
  control_box4 <- control_box4[-c(62),]

# control 5
# 4/3/2023
# box 1 
# standard reflectix
control_box1 <-cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/control5.csv?token=GHSAT0AAAAAACAR36BOWH4P5RSQ7LPIKAI4ZBLFA3Q"
)


  
  
  