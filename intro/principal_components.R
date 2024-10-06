pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)
?mtcars
head(mtcars)

cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

pc <- prcomp(cars,
             center = T,
             scale = T)

pc

pc <- prcomp(~mpg+cyl+disp+hp+wt+qsec+am+gear+carb,
             data=mtcars,
             center = T,
             scale = T)
pc

summary(pc)
plot(pc)
predict(pc) %>% round(2)
biplot(pc)
