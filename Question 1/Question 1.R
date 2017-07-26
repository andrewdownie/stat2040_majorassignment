#
# Read in the rice data
#
riceData <- read.csv(file="C:\\Users\\comma\\OneDrive\\School\\STAT2040\\stat2040_majorassignment\\STAT2040_Rice.csv",head=TRUE,sep=",")


#
# Q1a) Create box plots for both kinds of rice
#
boxplot(riceData$ShootDryMass~riceData$variety, ylab='Shoot Dry Mass', xlab="Rice Variety", main="Dry Shoot Weight Against Rice Variety")


#
# Q1a) Create subsets of the rice data based on the variety of rice
#
wtData = subset(riceData, riceData$variety=='wt')
ANU843Data = subset(riceData, riceData$variety=='ANU843')


#
# Q1a) Create qqplot for the wt subset
#
qqnorm(wtData$ShootDryMass, ylab="Actual Shoot Dry Mass", xlab="Theoretical Shoot Dry Mass", main="Q-Q Plot of Shoot Dry Mass for Rice Variety wt")
qqline(wtData$ShootDryMass, col='red')


#
# Q1a) Create qqplot for the anu843 subset
#
qqnorm(ANU843Data$ShootDryMass, ylab="Actual Shoot Dry Mass", xlab="Theoretical Shoot Dry Mass", main="Q-Q Plot of Shoot Dry Mass for Rice Variety ANU843")
qqline(ANU843Data$ShootDryMass, col='red')


#
# Q1c) pooled variance t procedure
#
t.test(wtData$ShootDryMass, ANU843Data$ShootDryMass)