library(tidyverse)
## Linear Regression to Predict MPG---------------------------------------------------------------
# Import .csv file
mechacar_data <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data)

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechacar_data))

## Summary Statistics on Suspension Coils---------------------------------------------------------
# Import .csv file
suspensioncoil_data <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Summarize the suspension coil’s PSI column
total_summary <- suspensioncoil_data%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

# Summarize the suspension coil’s PSI column group_by manufacturing lot
lot_summary <- suspensioncoil_data%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## T-Tests on Suspension Coils--------------------------------------------------------------------
# t-test on the PSI across all manufacturing lots
t.test(suspensioncoil_data$PSI, mu=1500)

# t-test on the PSI for each manufacturing lot
# t_test for lot 1
t.test(subset(suspensioncoil_data$PSI, suspensioncoil_data$Manufacturing_Lot=='Lot1'), mu=1500)

# t_test for lot 2
t.test(subset(suspensioncoil_data$PSI, suspensioncoil_data$Manufacturing_Lot=='Lot2'), mu=1500)

# t_test for lot 3
t.test(subset(suspensioncoil_data$PSI, suspensioncoil_data$Manufacturing_Lot=='Lot3'), mu=1500)

## Study Design: MechaCar vs Competition

