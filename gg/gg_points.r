library(ggplot2)

head(mtcars)

cars_plot <- ggplot(mtcars, aes(x=hp, y=gear)) + geom_point()
ggsave("plot.png")
print(cars_plot)

print(paste("minimum hp: ", min(mtcars$hp)))