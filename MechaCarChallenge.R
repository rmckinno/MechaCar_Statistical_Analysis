library(tidyverse) #Load tidyverse package including dplyr

MechaCar_df <- read.csv('resources/MechaCar_mpg.csv') #Import MechaCar data
head(MechaCar_df) #Check data frame

#Linear regression where mpg is the dependent variable
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + 
             spoiler_angle + ground_clearance + AWD, data=MechaCar_df)) #Get summary stats

Suspension_Coil_df <- read.csv('resources/Suspension_Coil.csv') #Import Suspension Coil data
head(Suspension_Coil_df) #Check data frame

# total summary data frame
total_summary <- Suspension_Coil_df%>%summarize("Mean" = mean(PSI),
                                                "Median"=median(PSI), "Variance"=var(PSI), "SD"=sd(PSI))

# lot summary data frame
lot_summary <- Suspension_Coil_df%>%group_by(Manufacturing_Lot)%>%summarize("Mean" = mean(PSI), 
                                                "Median"=median(PSI), "Variance"=var(PSI), "SD"=sd(PSI))
#All lots t.test
t.test(Suspension_Coil_df$PSI,mu=1500)

#Lot 1 t.test
lot1 <- subset(Suspension_Coil_df, Manufacturing_Lot == "Lot1", select = "PSI")
t.test(lot1,mu=1500)

#Lot 2 t.test
lot2 <- subset(Suspension_Coil_df, Manufacturing_Lot == "Lot2", select = "PSI")
t.test(lot2,mu=1500)

#Lot 3 t.test
lot3 <- subset(Suspension_Coil_df, Manufacturing_Lot == "Lot3", select = "PSI")
t.test(lot3,mu=1500)
