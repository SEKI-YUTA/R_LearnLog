library(ggplot2)

options(scipen=999)

household_data <- read.csv("./population.csv")
sub_data <- subset(household_data, rank=="総数")

head(sub_data)

# population_graph <- ggplot(sub_data, aes(x=seireki, y=population_sum)) + geom_line()
population_graph <- ggplot(sub_data, aes(x=seireki))+
geom_line(aes(y=population_sum), color="darkorange2")+
geom_line(aes(y=population_man), color="blue1")+
geom_line(aes(y=population_woman), color="brown1")
ggsave("人口推移（総数）.png")