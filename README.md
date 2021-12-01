# MechaCar_Statistical_Analysis
Using R-Script to perform statistical analysis on given datasets.

## Tools
R-Studio
R

## Overview
In this analysis, R is used to:
- Perform multiple linear regression analysis to identify which variables in the MechaCar dataset best predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of the findings.

## Linear Regression to Predict MPG
<img src=resources/images/summary_stats.png height=250 align=right>
In the last column of summary stats, both p-values 'Pr(>|t|)' of vehicle length and ground clearance are extremely small meaning they provide a non-random amount of variance to the mpg values in the dataset. This suggests that vehicle length and ground clearance have a statistically significant impact on MechaCar prototype's fuel economy.
The slope of the linear model is not considered to be zero given 
For this dataset, this linear model could predict the mpg of MechaCar prototypes but it may not be a good model for general use. The data may be overfit since the intercept's p-value  is significant and very similar to the p-value of ground clearance variable. The is also only 2 out of 5 independent variable that are significant which means there may be other variables that should be considered. So overall, this linear model could predict the mpg given the r-squared value of 0.71.

## Summary Statistics on Suspension
<img src=resources/images/total_lot_summary.png height=250 align=right>
The total summary stats show that the total variance for all lots is 62.39. If the specifications for MechaCar calls for the variance of the suspension coils to not to exceed 100 then the total variance is within spec. However, breaking the lots down into individual lots shows that Lot 3 is 70% over specification while the others fall within spec. The high variance in Lot 3 shows that the PSI in those suspension coils are inconsistent and indicates a problem with Lot 3 production line. The variance in Lot 1 is the lowest, followed by Lot 2 and both are well below the required specs.

## T-Tests on Suspension Coils
<img src=resources/images/t-tests.png height=350 align=right>
The t-test for all lots versus the population resulted in a p-value of 0.06, greater than the predetermined significance level of 0.05. Since the p-value is below the significance level, there is insufficient evidence to reject the null hypothesis that the observed means are not not statistically different. Therefore, the mean for all lots and the mean of the population are statistically similar.

Running t-tests for the individual lots revealed that Lot 1 and Lot 2 both had statistically similar means to the population mean with p-values of 1.00 and 0.06 respectively. The mean of Lot 1 was exactly the same as the population mean so the p-value of 1 was expected. The mean of Lot 2 varied slightly, enough to drop the p-value but not below the significance level. Neither are statistically different.
However, Lot 3 varied enough, with a mean of 1496.14, to have a p-value of 0.04 which is lower than the significance value of 0.05. This is enough to determine that there is sufficient evidence to reject the null hypothesis that Lot 3 mean is NOT statistically different than the population mean, they are in fact statistically different. This supports the previous conclusion showing Lot 3's variance below specification. 
## Study Design for: mechaCar vs Competion
According to Statista, Fuel Efficiency was the 2nd most important factor behind safety when buying a car. Testing MechaCar's highest avg MPG rating vehicle for fuel efficiency would be ideal. For example if the car is 40mpg that would make it one of the best gas cars in the market.
Null Hypothesis: The actual MPG of X-MechaCars is the same as MechaCars claim of 40mpg(this is a hypothetical number).
To test this hypothesis, randomly select 12 of the vehicles in question as new and gather each vehicle's MPG accounting for same driver and conditions are relatively the same. Compare the mean of the sample to the known population's average MPG of 40 using a one sample t-test and test if there is a statistical difference between the two group's average MPG.

