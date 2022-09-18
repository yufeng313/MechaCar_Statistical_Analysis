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
Some of the coefficients are big (like 6.27, 3.55, 3.41), and others are very small (1.25e-3, 6.88e-2), so in general, the slope of the linear model can’t be considered to zero.<br/>
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
     The variance of the suspension coils’s PSI for each lot: <br/>
      a) 0.98(lot1), 7.47(lot2), which meet this design specification, too.<br/>
      b) Lot 3 is out of specification with a variance of 170.29.<br/>
      
## T-Tests on Suspension Coils
### t-test on the PSI across all manufacturing lots
![3 general sample ttest](https://user-images.githubusercontent.com/107179765/190931900-3ef60a83-3224-4171-8229-c052780cc997.png)<br/>
Assuming our significance level is 0.05, our p-value of 0.72 is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we can state that the PSI across all manufacturing lots is statistically similar from the population mean of 1,500 pounds per square inch.
### t-test on the PSI for each manufacturing lot
![3 lot1 sample ttest](https://user-images.githubusercontent.com/107179765/190931922-1051de51-607f-4340-823d-cc1e24aeff6e.png)<br/>
![3 lot2 sample ttest](https://user-images.githubusercontent.com/107179765/190931924-78454cd5-2efd-40f8-a85e-bacaa675c3ae.png)<br/>
Here the p-values are both below the significance level of 0.05 percent, so we can reject the null hypothesis and conclude that the PSI across the Lot 1& Lot 2 is statistically different from the population mean.<br/>

![3 lot3 sample ttest](https://user-images.githubusercontent.com/107179765/190931942-fa535c54-bb5e-4f25-a5bc-4d88eb90fe0d.png)<br/>
Here the p-value is above the significance level, so we can conclude that the PSI for Lot3 are statistically similar to the population mean.

## Study Design: MechaCar vs Competition
1.	Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
2.	In your description, address the following questions:<br/>
•	What metric or metrics are you going to test?<br/>
•	What is the null hypothesis or alternative hypothesis?<br/>
•	What statistical test would you use to test the hypothesis? And why?<br/>
•	What data is needed to run the statistical test?

## Summary
The results show 
