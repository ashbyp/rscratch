library(readr)
library(ggplot2)
dat <- read_csv('./intro/datasets/mbb.csv')

head(dat)
View(dat)
summary(dat)

# Basic scatter plot
ggplot(dat, aes(x = Month,
                     y = Mozart,
                     )) +
  geom_point() +
  labs(x = "Month",
       y = "Mozart",
       caption = "Composers") +
  scale_color_brewer(palette = "Dark2")
