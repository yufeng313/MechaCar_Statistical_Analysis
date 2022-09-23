# MechaCar_Statistical_Analysis
## Overview
This project involves the use of statistics and hypothesis testing to analyze a series of datasets from the automotive industry.

## Resources
Data Source: MechaCar_mpg.csv, Suspension_Coil.csv<br/>
Software: RStudio 2022.07.1

## Results
## Linear Regression to Predict MPG
In this part of analysis, we create our multiple linear regression model, and obtain the statistical metrics by using the summary() function.
![1 linear regression](https://user-images.githubusercontent.com/107179765/190931804-fac11c7a-2294-4e26-b42f-5b0fe9414795.png)<br/>
- Q: Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br/>
  A: According to our results, vehicle_length and ground_clearance (as well as the Intercept) provide a non-random amount of variance to the linear model of mpg.<br/>
- Q: Is the slope of the linear model considered to be zero? Why or why not?<br/>
  A: The output of multiple linear regression produces the coefficients for each variable in the linear equation: mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weight + 6.88e-2 * spoiler_angle + 3.55 * ground_clearance -3.41 * AWD - 1.04e+2 <br/>
Some of the coefficients are big (like 6.27, 3.55, 3.41), while others are very small (1.25e-3, 6.88e-2), so in general, the slope of the linear model can’t be considered to zero.<br/>
In addition, the p-value of our linear regression analysis is 5.35e-11, which is much smaller than our assumed significance level of 0.05. Therefore, we can state that there is sufficient evidence that the slope of our linear model is not zero.<br/>
- Q: Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br/>
  A: The r-squared value is 0.71, which means our mpg data is highly explained by this linear model. So we can conclude that this linear model can predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
### Summary across all manufacturing lots
![2 total summary](https://user-images.githubusercontent.com/107179765/190931880-9b75ad68-214a-43b1-82a5-6a97512b93d1.png)<br/>
### Summary on each manufacturing lot
![2 lot summary](https://user-images.githubusercontent.com/107179765/190931881-5329978d-0c7e-4fbb-b864-c1b4d4b07911.png)
- Q: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?<br/>
  A: The variance of the suspension coils’s PSI across all manufacturing lots is 62.29, which meets this design specification.<br/>
     The variance of the suspension coils’s PSI for each lot: a) 0.98(lot1), 7.47(lot2), which meet this design specification, too. b) Lot 3 is out of specification with a variance of 170.29.<br/>
      
## T-Tests on Suspension Coils
### t-test on the PSI across all manufacturing lots
![3 general sample t-test](https://user-images.githubusercontent.com/107179765/192029276-ffce974a-8fd3-4f58-abbe-20ee44b39bed.png)<br/>
Assuming our significance level is 0.05, our p-value of 0.06 is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we can state that the PSI across all manufacturing lots is statistically similar from the population mean of 1,500 pounds per square inch.
### t-test on the PSI for each manufacturing lot
#### Lot1 & Lot2
![3 lot1 sample t-test](https://user-images.githubusercontent.com/107179765/192027162-7ba7a9ca-5ef7-4808-bb57-a3cb8aa7c10b.png)<br/>
![3 lot2 sample t-test](https://user-images.githubusercontent.com/107179765/192027174-58e55a4e-9c00-4e05-a9df-c2e2fea2c7f0.png)<br/>
Here the p-values are both above the significance level of 0.05 percent, so we can conclude that the PSI across the Lot 1 & Lot 2 is statistically similar to the population mean.<br/>
#### Lot3
![3 lot3 sample t-test](https://user-images.githubusercontent.com/107179765/192027241-4790f5e7-3dc8-467f-bab6-d7c149c1c0a1.png)<br/>
Here the p-value is below the significance level, so we can reject the null hypothesis and conclude that the PSI for Lot 3 are statistically different from the population mean.

## Study Design: MechaCar vs Competition
To compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers, we are going to design a statistical study following the questions below:<br/>
1. What metric or metrics are you going to test?<br/>
 Think critically about what metrics would be of interest to a consumer, we would like to test following metrics: <br/>
 - fuel efficiency, 
 - horse power, 
 - maintenance cost, 
 - safety rating.

2. What is the null hypothesis or alternative hypothesis?<br/>
- Null hypothesis: each performance metrics is statistically similar between MechaCar and other manufacturers.<br/>
- Alternative hypothesis: each performance metrics of MechaCar is statistically different from other manufacturers.

3. What statistical test would you use to test the hypothesis? And why?<br/>
Since we are going to analyze the means between MechaCar and different manufacturers in each category of those metrics above, we would like to use a one-way ANOVA test, for the ANOVA test is used to test the means of a continuous numerical variable across multiple groups. So in this analysis we are going to compare the means for each metric across different manufacturers.

4. What data is needed to run the statistical test?<br/>
We would need data from MechaCar and other manufacturers all gathered in a single table where each metric is a column.
