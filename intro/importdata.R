


pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

# rio

rio_csv <- import("C:/Users/ashbyp/dev/R/scratch/intro/datasets/mbb.csv")
head(rio_csv)

rio_txt <- import("C:/Users/ashbyp/dev/R/scratch/intro/datasets/mbb.txt")
head(rio_txt)

rio_xls <- import("C:/Users/ashbyp/dev/R/scratch/intro/datasets/mbb.xlsx")
head(rio_xls)

# native

library(readr)
csv <- read_csv("intro/datasets/mbb.csv")
head(csv)

library(readxl)
xls <- read_excel("intro/datasets/mbb.xlsx")
View(xls)

text <- read.table("intro/datasets/mbb.txt", header= T, sep = "\t")
head(text)

