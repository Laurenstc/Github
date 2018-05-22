Introduction
DrivenData notes

DrivenData username: Laurens-Annie
DrivenData final best score: 0.8223
DrivenData final best rank: 183
Final Delivery notes

This notebook uses a dataset from the Taarifa waterpoints dashboard, which aggegrates data from the Tanzania Ministry of Water. The competition requires us to predict which waterpumps are functional, which need repairs and which are broken. For more information see: https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table/page/23/

The notebook is structured as follows.

Data Preperation
Id Column
Train Labels
Data Cleaning & Preprocessing
Incorrect values
Similar Variables / Values
Factorization / de-Factorization
Level Reduction
NA imputation
Transformations
Incomplete Cases
Factor Level Reduction
Feature Engineering
Baseline Model
Feature Construction
New Features
Genetic Programming
Creating Dummies
Overfit Prevention
Local Outlier Factor - Outlier Detection
Dummy Levels
Modelling
Optimized Random Forest
Discriminant Analysis
LDA (+PCA)
QDA
(Bayesian) Optimized XGBoost
Ensemble methods
Stacked Generalizations
Ensemble Voting Classification
Hard Voting
Predictions
The notebook is a snapshot of how I achieved my final score. Everything in here 'helped' and thus a lot of other methods I tried are excluded. Below is a list of things I tried beside the methods used in the notebook.

Preprocessing

MICE NA imputation
Label encoding
Feature engineering

Recoding various variables
PCA on numericals
MCE on categoricals to combine dummies of categoricals with high amount of levels.
Various iterations of genetic algorithms
Polynomial and interaction features
Various binning methods until I settled on decision trees
Modelling

non-linear kernel SVM. Was too slow to be feasible.
Adaboost - not effective
Genetic feature selection - way way too slow. I ran it for two days but had to pull the plug to focus on other methods.
Besides all this a lot of time was spent optimizing hyperparameters (gridsearches and bayesian optimization), and playing with ensembles. I definitely think I could get some more gains by training and optimizing more models to increase my probability based voting effectiveness.

In the end I believe my best work is in factor level reduction, specifically I gained a lot by combining similar levels through using Levenshtein distance.
