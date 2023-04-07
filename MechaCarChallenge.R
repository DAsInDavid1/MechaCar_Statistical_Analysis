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

