rep(1,10)
rep("Ros",5)
seq(2,8)
seq(4,20)
seq(4,20, by=4)
a <- c(2,3,4,5)
a<- c(a,b,c,1)
b<- c("a","b",5)
d<- c(1,4,5,3,6,6,2,6)
d[3]
d[4]
d[6]
d[7]
d[1:4]
d[-1]
d[-3]
d[-2:-4]

a<- data.frame(x=1:3,y=c("a","b","c"))
View(a)
a[1,1]
a[1,]
a[c(1,3),1]
a[-2,1]
a[c(1,3),c(1,2)]
Admission<- read.csv("C:/data/Admission_Prediction.csv")
View(Admission)
head(Admission,5)
tail(Admission,5)
View(tail(Admission,5))
Airquality <- datasets::airquality
Airquality[,c(1,2)]
View(Airquality[c(1,3),c(1,2)])
Airquality[,-6]
View(Airquality[,-6])
df <- Airquality[,-6]
View(df)

summary(Airquality)
View(summary(Airquality))
summary(Airquality[,1])

summary(Airquality$Month)

# Data visualization

plot(Airquality$Wind, type = "b") # b= comb of point and line
#h= histogram, s= stair steps
plot(Airquality$Wind, Airquality$Temp, type = 'p')

plot(Airquality)

plot(Airquality$Ozone, xlab = "ozone concentration", ylab = "No of instance", main = 
       "ozone level in newyork city", col= 'blue')


barplot(Airquality$Ozone,xlab = "ozone concentration", ylab = "No of instance", main = 
          "ozone level in newyork city", col= 'red',axes = T)
hist(Airquality$Temp, xlab = "Temprature", ylab = "frequency", main = "airquality temp", 
     col = 'red')
# single box plot
boxplot(Airquality$Wind)
boxplot.stats(Airquality$Wind)$out

# multi box plot

boxplot(Airquality[,1:4], main = "multibox plot")

par(mfrow = c(3,3))
plot(Airquality$Wind)
boxplot(Airquality$Wind)
hist(Airquality$Solar.R)
plot(Airquality$Temp, type = "l")
boxplot(Airquality$Temp)
boxplot(Airquality[,1:4])
boxplot(Airquality$Wind, type = "s")
plot(Airquality$Wind, type = "s")
hist(Airquality$Day, col = 'yellow')
sd(Airquality$Wind)

library(moments)
library(moments)
skewness(Airquality$Wind)
kurtosis(Airquality$Wind)
