pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)

head(iris)

p_load(psych)

p_help(psych)
p_help(psych, web = F)

describe(iris$Sepal.Length)
describe(iris)


p_unload(all)
detach("package:datasets", unload = TRUE)