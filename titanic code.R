#Loading libaries
library(caret)
library(randomForest)
library(fields)

#changing directory and loading datasets
setwd("~/IE-BIGDATA/Kaggle/Titanic")
trainSet <- read.table('train.csv', sep=',', header = TRUE)
testSet <- read.table('test.csv', sep=',', header = TRUE)

#prelim analysis
head(trainSet)
head(testSet)

#crosstables on categorical vars to find what variables could be good predictors for "Survived"
#only 'Pclasss' and 'Sex' seem good predictors
table(trainSet[c('Survived', 'Pclass')])
table(trainSet[c('Survived', 'Sex')])
table(trainSet[c('Survived', 'SibSp')])
table(trainSet[c('Survived', 'Parch')])
table(trainSet[c('Survived', 'Embarked')])

#conditional boxplots for continuous vars to find more predictors
#exclude Age becuase so many NA's and doesnt seem good predictor. Include 'Fare'.
summary(trainSet$Age)
bplot.xy(trainSet$Survived, trainSet$Age)
summary(trainSet$Fare)
bplot.xy(trainSet$Survived, trainSet$Fare)

#Convert 'Survived' to factor to be able to build classification model instead of regression model
trainSet$Survived <- factor(trainSet$Survived)

#set random seed for random forest algo
set.seed(42)
#train the model based on the random forest algorithm
train_control <- trainControl(method="cv", number = 5)
model <- train(Survived ~ Pclass + Sex + SibSp + Embarked + Fare + Parch, 
               data = trainSet, 
               method = 'rf', 
               trcontrol = train_control
          )
#run model
model
#check testSet for NA's in predictors
summary(testSet)
#Fare has 1 NA, replace it with mean of Fare
testSet$Fare <- ifelse(is.na(testSet$Fare), mean(testSet$Fare, na.rm = TRUE), testSet$Fare)

#create new column in testSet and fill with predicted values based on our model
testSet$Survived <- NA
testSet$Survived <- predict(model, newdata = testSet)

#remove columns for Kaggle upload and write into csv file
kagglesubmission <- testSet[,c("PassengerId", "Survived")]
write.table(kagglesubmission, file = "kagglesubmission.csv", col.names = TRUE, row.names = FALSE, sep = ",")
