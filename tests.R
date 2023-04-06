
# full insulation
# 3/23/2023
# r&d box
# full 1/2" Styrofoam insulation + reflectix
full_rdbox <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/06c8deca92a9e3a0ca2bda0361121cb10fc2f6ca/cs_data/full_insulation.csv?token=GHSAT0AAAAAACAR36BPUJK6PHHVI2HF7A5CZBLFYRA"
  )

# full insulation
# 4/6/2023
# r&d box
# full 1/2" polyiso foam, cut on eastman
full_rdbox2 <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/full_insulation2.csv?token=GHSAT0AAAAAACAR36BO6V33CXSG6OVPPETUZBO6OQQ"
)

# top insulation
# 3/24/2023
# box #1
# 1/2" polyiso foam above light shield
top_box1 <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/top_insulation.csv?token=GHSAT0AAAAAACAR36BO3RK5AOENMUVTTYUCZBLE6CQ"
)

# top insulation
# 4/5/2023
# box #2
# 1/2" polyiso foam above light shield
top_box2 <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/top_insulation3.csv?token=GHSAT0AAAAAACAR36BPX23THGVG4D3FQM7GZBN5BUA"
)

# top insulation
# 3/31/2023
# r&d box
# 1/2" styrofoam above light shield
top_rdbox <- cs_transform(
  "https://raw.githubusercontent.com/karijdej/cs-testing-plots/main/cs_data/top_insulation2.csv?token=GHSAT0AAAAAACAR36BPHHL6QPV6ZJSWQUXKZBLFHTQ"
  )
  # fix temp collection error
  top_rdbox$temp[40] <- mean(c(top_rdbox$temp[39], top_rdbox$temp[41]))
  top_rdbox$tempF[40] <- (top_rdbox$temp[40] * 1.8) + 32
  
  
  