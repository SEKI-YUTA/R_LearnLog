library(ggplot2)

ggplot(mtcars, aes(wt, mpg, label = rownames(mtcars))) +
geom_point() +
# geom_text()を使うにはlabelを指定している必要がある
# geom_textとgeom_labelは背景があるかないかの違い
geom_label(check_overlap = TRUE, aes(col = factor(cyl)))

ggsave("test_appearamce.png")

head(mtcars)
head(mpg)

ggplot(mpg, aes(displ, hwy, colour = class)) +
geom_point() +
geom_smooth(aw = FALSE, method = "lm")

ggsave("smooth.png")