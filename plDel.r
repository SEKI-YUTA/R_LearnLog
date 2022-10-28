library(ggplot2)

head(iris)

my_plot <- ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width)) +
            geom_point(aes(colour=Species)) +
            geom_smooth()

ggsave("m_point.png")