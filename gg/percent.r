# https://mickey24.hatenablog.com/entry/20110223/ggplot2_qplot
library(ggplot2)


draw_nothing <- function() {
  ggplot() + geom_blank()
  ggsave("blank.png")
}

temp <- floor(runif(100000,1,7))

# using default function
# png("hist_demo.png")
# hist(temp, breaks=c(0,1,2,3,4,5,6))
# dev.off()


#using ggplot2
# data=data.frame(x=rnorm(100))
# plot=qplot(x, data=data, geom="histogram") 
# ggsave(plot,file="graph1.png")
head(diamonds)
# qplot(carat, price, data = diamonds, colour=clarity)
# qplot(carat, data = diamonds, colour=clarity, geom="density")

# ヒストグラム
qplot(price, data=diamonds, geom="histogram")

# 箱ひげ図
# qplot(cut, carat, data = diamonds, geom="boxplot")

# ヒートマップ
# d <- ggplot(diamonds, aes(x, y)) + xlim(4, 10) + ylim(4, 10)
# d + geom_bin_2d(na.rm=TRUE, bins=50)

ggsave("sample.png")



draw_nothing()