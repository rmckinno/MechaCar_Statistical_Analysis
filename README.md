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
The total summary stats show that the total variance of for all lots is 62.39. If the specifications for MechaCar calls for the variance of the suspension coils to not to exceed 100 then the total variance is within spec. However, breaking the lots down into individual lots shows that Lot 3 is 70% over specification while the others fall within spec. The high variance in Lot 3 shows that the PSI in those suspension coils are inconsistent and indicates a problem with Lot 3 production line. The variance in Lot 1 is the lowest, followed by Lot 2 and both are well below the required specs.

##
