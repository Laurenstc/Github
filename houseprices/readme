#Assignment 1 - House Price Prediction
###Laurens ten Cate - MBD'18 - Machine Learning II

kaggle score notes

Kaggle username: Laurenstc
Kaggle final best score: RMSLE = 0.11383
Kaggle final best score rank: 81
local score notes

Locally I managed when to obtain consistent RMSE's of below 0.10. However, this notebook does not include my best local RMSE score as this was due to a ton of overfitting.

final delivery notes

The experimental dataset we are going to use is the House Prices Dataset. It includes 79 explanatory variables of residential homes. For more details on the dataset and the competition see https://www.kaggle.com/c/house-prices-advanced-regression-techniques.

The workbook is structured as followed:

Data Cleaning and Pre-processing
Outliers
Statistical transformations
Feature Engineering
Concatenation
NA's
Incorrect values
Factorization
Further Statistical transformation
Column removal
Creating features
Dummies
In-depth outlier detection
Overfit prevention
Baseline model
Feature Selection
Filter methods
baseline coefficients
Embedded methods
L2: Ridge Regression
L1: Lasso regression
In-depth coefficient analysis
Elasticnet
XGBoost
SVR
LightGBM
Ensemble methods
Stacked generalizations
Averaging
standard
weighted
Prediction
This notebook represents the data manipulation used for my final score on Kaggle (RMSLE = 0.11383). However, in the process of achieving this score a lot of different feature engineering tactics were employed. For the sake of brevity I left these out of the notebook though below is a quick overview of other things I tried that did not help my score.

One thing that was used but was not included is GridsearchCV. Gridsearching helped me find ranges of Alphas and L1_ratios that I could reuse later. However, it became unfeasible to continuously gridserach for optimal parameters with each iteration of feature engineering. Thats why I decided to omit the code from the final delivery.

feature engineering tries

Recoding categoricals to keep ordering information (if data was really ordinal)
Binning date variables (yearbuilt etc)
simplify and recode neighborhood variable based on a groupby with SalePrice
create simplified quality variables (1-5 scale instead of 1-10)
create 2nd and 3rd order polynomials of top10 strongest correlating variables with SalePrice
create 2nd and 3rd order polynomials of all variables
create interaction variables by looking at individual interaction plots
use sklearns PolynomialPreprocessing for complete set of interaction and polynomial terms
feature selection tries

F-score selection
Mutual information regression selection
Backwards stepwise selection (RFECV)
Forwards stepwise selection (LARS)
Besides feature selection and engineering a lot of time was spent on optimizing my ensemble of models. I believe some more gains can be made here specifically regarding my stacked generalization model.

In the end I believe the biggest gains in my score were achieved with a few things. OLS outlier removal, nuanced NA filling and averaging with a stacked generalization model.
