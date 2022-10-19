library("tidyverse")
head(iris)
# print(iris[, 1])
# v1 <- iris[, 1]
# v2 <- iris$Sepal.Width

options(scipen = 999)

data <- read.csv("./population_byjp.csv")

target_data <- subset(data, rank=="総数", select=c("population_sum", "population_man", "population_woman"))

# target_data <- subset(iris)


print(class(target_data$population_sum))
print(class(target_data[,1]))

head(target_data)


png()
# plot(xVec,target_data)
plot(target_data$population_sum, type="o",pch=c(1,2,3), cex=2, col="black", lty=3)
# plot(1:10)
par(new=TRUE)
# plot(target_data$population_man, col="blue", type="l")
# plot(target_data$population_woman, col="red", type="l")
dev.end()


