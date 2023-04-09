## loading in packages
library(dplyr)
library(tidyverse)

## Read CSV file
MechaCar_mpg <-read_csv("MechaCar_mpg.csv")

##Perform linear regression
mpg_linear <-lm( mpg~vehicle_length + 
                  vehicle_weight + 
                  spoiler_angle + 
                  ground_clearance + 
                  AWD,
                MechaCar_mpg)
##performing summary to get p-value and r-squared
summary(mpg_linear)

## Read CSV file
suspension <-read_csv("Suspension_Coil.csv")

## performing summary of suspensions
total_summary<- summarize(suspension, mean(PSI), 
                          median(PSI), var(PSI), 
                          sd(PSI))

## grouping lots together
lots <- group_by(suspension, Manufacturing_Lot)
## summarizing lots
lots_summary <- summarize(lots, mean(PSI), 
                          median(PSI), var(PSI), 
                          sd(PSI))

## t-testing all manufacturing lots against mean PSI
t.test(suspension$PSI, mu=1500)

## t-testing each manufacturing lot against PSI
t.test(subset(lots$PSI, lots$Manufacturing_Lot == "Lot1"), mu=1500 )
t.test(subset(lots$PSI, lots$Manufacturing_Lot == "Lot2"), mu=1500 )
t.test(subset(lots$PSI, lots$Manufacturing_Lot == "Lot3"), mu=1500 )
