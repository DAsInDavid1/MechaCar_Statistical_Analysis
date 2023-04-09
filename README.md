# MechaCar_Statistical_Analysis
Reviewing production data for insights that may help the manufacturing team with issues in the MechaCar using Linear regressions, and t-tests in R.


## Linear Regrssion to Predict MPG
The two variables that provide the highes non-ranomd variance are ground clearance, and vehicle length. Those two have the smallest p-values shows in the picture below. We have high certainty that those two factors are not up to random chance unlike spolier angle and AWD which have much worse p-values.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Coefficents.png" width=50% height=50%> 

The slope of the linear regression is not 0 due to the is not considered to be zero. We know this due to the slopes of the coefficents being greater then, or less then 0 for different pairs. They might be close to 0, but each coefficent has an effect on the MPG even slightly.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Linear_Regression_coefficients_slopes.png" width=25% height=25%> 


The linear regression does predict mpg of MechaCar prototypes effectively. With a P value of 5.35 * 10^11 it shows that we can reject the null hypothesis and that these factors have an effect on mpg. Along with the R-squared value of .7149, we know that 71% of the time our linear graph will correctly predict the effect each coefficent has on mpg.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/Linear_Regression_P%26R%5E2_value.png" width=50% height=50%> 

## Summary Statistics on Suspension Coils
As seen in the chart below, the total variance for all lots was concederably high, but not exceeding 100 pounds per square inch. However once looking at the per lot summary, we can see that lot 3 had a variance of 170 PSI. This lot made our total summary extremly diffferent then what it should have been with the first two lots. We will need to look into why lot 3 had such variance and try to see if it was due to human error, or machine error. Even though our total summary had our variance in a acceptable range we should not use the "must not exceed 100 pounds per square inch" rule since as a total summary it should be much lower. I would recommend that we lower our acceptable range for total summary down to 50 pounds per square inch variance so that we know when we must start looking at indivudal lots and should have a much more consistant manufacturing process.

| Total Summary  | Lots Summary
| ------------- | -------------  
| <img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/PSI_total_summary.png" width=100% height=100%>   | <img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/PSI_by_lots.png" width=100% height=100%>   

## T-Tests on Suspension Coils
Seen in the Manufacturing T-test below, assuming our significance level was 0.05, our p-value is over the level at which was acceptable. We do not have suffiecent evidence to reject the null hypthesis that the populations mean is not statistcally different from apopulation mean of 1500 PSI.

<img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/t-test_all_manufacting_lots.png" width=50% height=50%>

However, after doing t-tests for each indivdual lot. It can be seen that lot 3 has a p-value of 0.04 which means we can reject the null hypthesis for that lot only. The other two, and especially lot 1 has a p-value over 0.05 so we cannot reject the null hypothesis for those two lots. So if we want all our lots to be at a mean of 1500 PSI, then we would have to look at lot 3 since that is the one we can be certain with 96% accuracy that it does not have the 1500 PSI mean we are looking for.

| Lot 1 | Lot 2 | Lot 3
| ------------- | ------------- | -------------
| <img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/t-test_lot_1.png" width=100% height=100%>   | <img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/t-test_lot_2.png" width=100% height=100%>   |  <img src= "https://github.com/DAsInDavid1/MechaCar_Statistical_Analysis/blob/main/Pictures/t-test_lot_3.png" width=100% height=100%>

