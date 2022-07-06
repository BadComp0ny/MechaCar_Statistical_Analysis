# MechaCar_Statistical_Analysis
The purpose of this exercise is to utilize R for statistical analysis of data on a prototype car in order to potentially provide additional insights to the production team.  The focus of the data is to identify specs that have the greatest impact on MPG for the prototype vehicle.

## Linear Regression to Predict MPG

![Image1](/Images/RScript.png)
![Image4](/Images/RScript2.png)

1.  In review of the collected data it appears that the two specs which appear to have the most impact on MPG for the MechaCar are the **Vehicle Length** and the **Ground Clearance**.  This is identified as both have a p-value well below .005 which shows a strong co-relation.
2.  The overall p-value of this is 5.35e-11 which is significantly lower that an assumed significance level of .05%.  As this value is below the .05% we can reject the notion that these spec changes result in random impacts to MPG and can assume that the slope of this linear model is not 0.
3.  In review of the data we identify that the R-Squared value is approximately 71% (0.7149).  Therefore this supports that this prediction is accurate approximately 70% of the time.  As such we can assume that this is an effective prediction model.

## Summary Statistics on Suspension Coils

![Image2](/Images/Total_summary.png)

![Image3](/Images/Lot_Summary.png)

Specs indicate that the variance for the suspension coils must not exceed 100lb's PSI.  In review of the total sample we find that the variance is at 62.29lb PSI, which is well below that of the listed specs.

Further review of the individual lots shows that the variance has increased with each lot that was tested.  Lot 1 and Lot 2 have very low variance between samples (less than 1lb PSI for lot 1 and less than 7.5lb PSI for lot 2) while lot 3 has a variance in excess of 100lb PSI.

Additional review of this third lot should be performed to identify if there is a degradation with each iteration of manufacturing or if this batch should be recalled.


## T-Tests on Suspension Coils
![Image5](/Images/t.test.png)

The t-test results indicate for the total population support prior observations which indicate that their is not enough evidence to support rejecting the null hypothesis.

When we look at the individual lots we see again that we can't reject the null hypotheses for lot 1 and 2.

Looking at lot 3 alone we do see that their is enough to support that the sample mean and the presumed population are statistically different. This is supported by the fact that the **p-Value is 0.04168** which is lower than the .05 minimum threshold for significance.

then briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.

## Study Design: MechaCar vs Competition
A study I would propose would require collecting data on MechaCar and comparable models from other manufacturers over the last 5 years (so as to include a sample from both pre and post pandemic).

- What are comparable models to MechaCar from other manufacturers?
- Of those what are the vehicles we anticipate to be directly competing with?
- What would most impact the selling price for our vehicle?


### Metrics
- MSRP for comparable vehicles
- MPG
- Maintenance Cost
- Average age of owner
- Diversity of ownership (male v. female)
- Safety Rating
- Average Costs of Ownership
- Engine (Gas, Hybrid, Electric)

### Hypothesis to test
- Null Hypothesis is that MechaCar is priced appropriately based on the target consumer for this vehicle.
- Alternative Hypotheses is that the MechaCar is priced inappropriately based on the target consumer for this vehicle.

### Tests
I would perform a mulitple linear regression tests in order to best determine what factors are most likely to predict the appropriate price for the purchase of a vehicle for our target consumer.


