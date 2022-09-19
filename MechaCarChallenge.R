library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))

SuspCoil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

total_summary <- SuspCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

lot_summary <- SuspCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(SuspCoil$PSI,mu=1500)

lot1 <- SuspCoil %>% subset(Manufacturing_Lot=='Lot1')
t.test(lot1$PSI,mu=1500)

lot2 <- SuspCoil %>% subset(Manufacturing_Lot=='Lot2')
t.test(lot2$PSI,mu=1500)

lot3 <- SuspCoil %>% subset(Manufacturing_Lot=='Lot3')
t.test(lot3$PSI,mu=1500)
