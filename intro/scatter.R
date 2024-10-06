library(datasets)
?mtcars
head(mtcars)

hist(mtcars$wt)
hist(mtcars$mpg)

plot(mtcars$wt, mtcars$mpg)

plot(mtcars$wt, mtcars$mpg,
     pch = 19, # solid circle
     cex = 1.5, # make 150% size
     col = "#cc0000",
     main = "MPG as function if Weight of Cars",
     xlab = "Weight",
     ylab = "MPG")

detach("package:datasets", unload = TRUE)
