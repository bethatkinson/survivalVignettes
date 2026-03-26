spe <- read.csv('~/research/poisson/terry/dataspe.csv')
spe <- spe[order(spe$start_dt),]
spe$birth_dt <- as.Date(spe$birth_dt,format="%m/%d/%Y")
spe$fu_dt <- as.Date(spe$fu_dt,format="%m/%d/%Y")
spe$start_dt <- as.Date(spe$start_dt,format="%m/%d/%Y")

## want id, age, sex, testyr, futime, death, mgus
spe$id <- 1:nrow(spe)
spe$age <- pmin(round(as.numeric(spe$start_dt - spe$birth_dt)/365.25),85)
spe$futime <- as.numeric(spe$fu_dt - spe$start_dt) 
spe$testyr <- pmax(1971,lubridate::year(spe$start_dt))
spe$death <- spe$status  

table(spe$testyr,spe$semn)

spe <- spe[spe$testyr>1969,c('id','age','sex','mgus','testyr','futime','death')]

table(spe$testyr)

