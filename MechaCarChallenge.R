library(dplyr) #load DPLYR
mecha_car <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read data in dataset
head(mecha_car) #preview DS
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mecha_car) #lin regress
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mecha_car))

Susp_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read data in dataset
total_summary <- Susp_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #build total summary DF
lot_summary <- Susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) #build lot summary DF

t.test(Susp_coil$PSI,mu=1500) #t.test to determine if lots are statistically different

t.test(subset(Susp_coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500) # t test of lot 1
t.test(subset(Susp_coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500) # t test of lot 2
t.test(subset(Susp_coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500) # t test of lot 3