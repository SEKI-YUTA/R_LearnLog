library(ggplot2)

options(scipen = 999)

population_data_world <- read.csv("./data/population_world.csv")
population_data_japan <- read.csv("./data/population.csv")

head(population_data_world)

population_graph <- ggplot() +
    geom_line(data = population_data_world, aes(x=year, y=population_sum), color="black") +
    geom_line(data = population_data_world, aes(x=year, y=population_man), color="blue") +
    geom_line(data = population_data_world, aes(x=year, y=population_woman), color="red") +
    coord_cartesian(xlim = c(1980, 2022)) +
    labs(title = "世界の人口増加", x="年", y="人数")

ggsave("population_graph.png")


# my_plot <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
#             geom_point(aes(colour=Species)) +
#             geom_smooth()

# ggsave("m_point.png")