# MechaCar_Statistical_Analysis
Reviewing production data for insights that may help the manufacturing team with issues in the MechaCar using Linear regressions, and t-tests in R.


## Linear Regrssion to Predict MPG
The two variables that provide the highes non-ranomd variance are ground clearance, and vehicle length. Those two have the smallest p-values shows in the picture below. We have high certainty that those two factors are not up to random chance unlike spolier angle and AWD which have much worse p-values.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Coefficents.png" width=50% height=50%> 

The slope of the linear regression is not 0 due to the is not considered to be zero. We know this due to the slopes of the coefficents being greater then, or less then 0 for different pairs. They might be close to 0, but each coefficent has an effect on the MPG even slightly.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Linear_Regression_coefficients_slopes.png" width=25% height=25%> 


The linear regression does predict mpg of MechaCar prototypes effectively. With a P value of 5.35 * 10^11 it shows that we can reject the null hypothesis and that these factors have an effect on mpg. Along with the R-squared value of .7149, we know that 71% of the time our linear graph will correctly predict the effect each coefficent has on mpg.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Linear_Regression_P%26R%5E2_value.png" width=50% height=50%> 
