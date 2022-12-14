# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

For this activity, we ran a multiple linear regression to explore several independent variables that may affect the variability of our dependent variable - miles per gallon. In the model we included vehicle length, vehicle weight, spoiler angle, AWD and ground clearance as independent variables. 

In looking at the results of the regression, it is unlikely that vehicle length and ground clearance provide random amounts of variance to the model. Both appear to make major contributions in determining the miles per gallon of a particular vehicle.

![linear regression](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/linear%20regression.png)

The slope of the model is not considered to be zero. The low p-value leads us to reject the null hypothesis that the slope is zero.

While our model is a good start to understanding how these various car features have an impact on mpg, it doesn't necessarily predict prototype mpg very effectively and suggests overfitting. Only two of the five variables included are contributing towards a prediction of mpg and there are likely additional factors that need to be included in model to give us a more accurate depiction of what is happening to prototype performance. 

## Summary Statistics on Suspension Coils

In addition to vehicle prototype information, our dataset also included data from multiple production lots of suspension coils, specifically the pounds per square inch (PSI) of each coil. In order to determine if the manufacturing process is consistent across production lots, we ran some quick summary statistics - mean, median, variance and standard deviation - for all of the coils in the dataset as well as for each production lot separately.

**Total Summary**

![total summary](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/total%20summary.png)

**Lot Summary**

![lot summary](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/lot%20summary.png)

The specifications for the suspension coils dictate that the variance of the coils cannot exceed 100 PSI. When we look at all of the coils tested, the group as a whole passes this requirement, as the variance for coils is 62.3. However, the picture changes after summarizing each lot independently. Lots 1 and 2 are still well within the 100 PSI range, but the coils in manufacturing lot 3 far exceed it with a variance of 170.3.

## T-Tests on Suspension Coils

In addition to looking at summary statistics of the suspension data, we wanted to perform t-tests to determine if all manufacturing lots (and each lot separately) are statistically different from the population mean of 1,500 PSI.

**All Manufacturing T-Test**

![ttest all](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/ttest%20all.png)

**Lot 1 T-Test**

![ttest lot1](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/ttest%20lot1.png)

**Lot 2 T-Test**

![ttest lot2](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/ttest%20lot2.png)

**Lot 3 T-Test**

![ttest lot3](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/MechaCar%20images/ttest%20lot3.png)

For the dataset of all coils (mean = 1498.8, p-value = 0.060), as well as Lot 1 (mean = 1500, p-value = 1) and Lot 2 (mean = 1500.2, p-value = 0.607), we failed to reject the null hypothesis that the mean(s) are statistically different from the population mean. For Lot 3 (mean = 1496.1, p-value = 0.042) however, our conclusion was to reject the null because our p-value was less than our significance level of 0.05.

## Study Design: MechaCar vs  Competition

The final part of this activity involved designing a theoretical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers. The idea would be to focus on a element of performance that was of interest to consumers in an effort to maximize sales of our new vehicles. 

When looking at consumer criteria for purchasing a new car, safety typically tops the list. Because "safety" is a broad term that encompasses a large number of measurements, it will be necessary to focus our study to specific element(s) in order to come to clear conclusions. In the United States, vehicle safety data can be found at the website of the National Highway Traffic Saftey Administration (NHTSA), much of it via an API connection. 

For my study, we would look at crash data, specifically data taken from the front crush zones during collision tests. We would compare data from vehicles that would be market competitors with our MechaCar models and see how they compared in frontal collision outcomes. The data required would be taken from our internal crash testing efforts as well as data from the NHTSA.

**Sample crush profile taken from NHTSA testing on the 2011 Toyota Prius 5-door**

![prius](https://github.com/brianbutler08/MechaCar_Statistical_Analysis/blob/main/prius.png)

Without knowing population means, we would run some two-sample t-tests comparing MechaCar collison data with collision data from similar vehicles (i.e. a MechaCar SUV with competitor SUVs). We could look at the difference in measurement of crash zones (1 through 6) after the crash vs before to see if there is a difference in means between our two samples (MechaCar vs competitor). The null hypothesis would be that there is no difference in the means, while the alternate hypothesis would be that there is a difference. MechaCar would be hopeful that their vehicle(s) would withstand collisions better than competitors and could include those facts in future marketing campaigns.
