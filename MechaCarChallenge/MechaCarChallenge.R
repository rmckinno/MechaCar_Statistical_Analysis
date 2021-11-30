library(tidyverse) #Load tidyverse package including dplyr

MechaCar_df <- read.csv('resources/MechaCar_mpg.csv') #Import MechaCar data
head(MechaCar_df) #Check data frame

#Linear regression where mpg is the dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)
names(summary(lm(mpg ~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD, data=MechaCar_df))) #Get summary stats