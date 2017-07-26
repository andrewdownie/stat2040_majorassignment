riceData <- read.csv(file="C:\\Users\\comma\\OneDrive\\School\\STAT2040\\stat2040_majorassignment\\STAT2040_Rice.csv",head=TRUE,sep=",")

boxplot(riceData$ShootDryMass~riceData$variety, ylab='Shoot Dry Mass', xlab="X label", main="TEST")



wtData = subset(riceData, riceData$variety=='wt')
ANU843Data = subset(riceData, riceData$variety=='ANU843')


qqnorm(wtData$ShootDryMass)
qqline(wtData$ShootDryMass, col='red')

qqnorm(ANU843Data$ShootDryMass)
qqline(ANU843Data$ShootDryMass, col='red')
