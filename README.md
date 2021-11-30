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
<img src=resources/images/summary_stats.png height=400>
In the last column of summary stats, both p-values 'Pr(>|t|)' of vehicle length and ground clearance are extremely small meaning they provide a non-random amount of variance to the mpg values in the dataset. This suggests that vehicle length and ground clearance have a statistically significant impact on MechaCar prototype's fuel economy.
The slope of the linear model is not considered to be zero given 
For this dataset, this linear model could predict the mpg of MechaCar prototypes but it may not be a good model for general use. The data may be overfit since the intercept's p-value  is significant and very similar to the p-value of ground clearance variable. The is also only 2 out of 5 independent variable that are significant which means there may be other variables that should be considered. So overall, this linear model could predict the mpg if 

##
