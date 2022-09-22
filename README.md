# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

For this activity, we ran a multiple linear regression to explore several independent variables that may affect the variability of our dependent variable - miles per gallon. In the model we included vehicle length, vehicle weight, spoiler angle, AWD and ground clearance. 

In looking at the results of the regression, it is unlikely that vehicle length and ground clearance provide random amounts of variance to the model. Both appear to make major contributions in determining the miles per gallon of a particular vehicle.

![linear regression]()

The slope of the model is not considered to be zero. The low p-value leads us to reject the null hypothesis that the slope is zero.

While our model is a good start to understanding how these various car features have an impact on mpg, it doesn't necessarily predict prototype mpg very effectively and suggests overfitting. Only two of the five variables included are contributing towards a prediction of mpg and there are likely additional factors that need to be included in model to give us a more accurate depiction of what is happening to prototype performance. 

## Summary Statistics on Suspension Coils

In addition to vehicle prototype information, our dataset also included data from multiple production lots of suspension coils, specifically the pounds per square inch (PSI) of each coil. In order to determine if the manufacturing process is consistent across production lots we ran some quick summary statistics - mean, median, variance and standard deviation - for all of the coils in the dataset as well as for each production lot separately.

![total summary]()

![lot summary()

The specifications for the suspension coils dictate that the variance of the coils cannot exceed 100 PSI. When we look at all of the coils tested, the group as a whole passes this requirement, as the variance for coils is 62.3. However, the picture changes after summarizing each lot independently. Lots 1 and 2 are still well within the 100 PSI range, but the coils in manufacturing lot 3 far exceed it with a variance of 170.3.

