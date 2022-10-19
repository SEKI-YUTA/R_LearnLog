library(ggplot2)


xxx <- rpois(1000, 10)
xTable <- table(xxx)

ggplot(data = NULL, aes(x=as.numeric(names(xTable)), y=as.numeric(xTable))) +
geom_bar(stat="identity", wdith=45)

ggsave("hist.png")
