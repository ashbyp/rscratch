pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)
?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)]
head(cars)

dim(mtcars)
dim(cars)

hc <- cars %>% dist %>% hclust
hc

plot(hc)


rect.hclust(hc, k = 2, border="gray")
rect.hclust(hc, k = 3, border="blue")
rect.hclust(hc, k = 4, border="green4")
rect.hclust(hc, k = 5, border="darkred")


rm(list=ls())  # removes objects from environment
detach("package:datasets", unload = TRUE)

