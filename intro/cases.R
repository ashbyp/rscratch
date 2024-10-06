library(datasets)

head(iris)

hist(iris$Petal.Length)
summary(iris$Petal.Length)
summary(iris$Species)

hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length:versicolor")
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length:virginica")
hist(iris$Petal.Length[iris$Species == "setosa"],
     main = "Petal Length:setosa")

hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2") 


hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Short Virginica") 

i.setosa <- iris[iris$Species == "setosa",] # all columns

head(i.setosa)
summary(i.setosa)
hist(i.setosa$Petal.Length)

rm(list=ls())  # removes objects from environment
detach("package:datasets", unload = TRUE)
