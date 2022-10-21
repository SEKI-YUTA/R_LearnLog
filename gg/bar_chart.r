library(ggplot2)


# using plot function
# head(mtcars)
# png()
# cylinders <- table(mtcars$cyl)
# barplot(cylinders)
# dev.off()
# plot(cylinders)


# using ggplot2 library
cars_data <- read.csv("./mtcars.csv")
head(cars_data)

ggplot(data = cars_data, aes(x=hp, y=name)) +
geom_bar(stat = "identity", alpha = 0.5)

ggsave("hp_bar_char.png")

data <- c(1,1,2,3,4,4)
# print(factor(data))