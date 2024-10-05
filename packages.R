install.packages("pacman")
require(pacman)
library(pacman)

pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, lubridate, 
               plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)


p_unload(all)
detach("package:datasets", unload = TRUE)
