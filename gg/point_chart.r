library(ggplot2)

options(scipen = 999)
data("midwest", package = "ggplot2")

ggplot(midwest, aes(x=area, y=poptotal)) +
# 散布図を求めている事を伝える
geom_point(aes(col=state), size=3) +
# 線の部分
geom_smooth(method = "lm") +
# 一部にズームする方法（範囲外の値を捨てる）
# xlim(c(0, 0.1)) + ylim(c(0, 500000))
# 一部にズームする方法（範囲外の値も捨てない）
coord_cartesian(xlim = c(0, 0.1), ylim = c(0, 500000))+
# ラベルとかを追加
labs(title = "population graph", subtitle = "in midwest", y = "Population", x= "Area") +
# X軸のメモリを変更
scale_x_continuous(breaks = seq(0, 0.1, 0.01)) +
# X軸方向に反転
scale_x_reverse() +

ggsave("midwest.png")