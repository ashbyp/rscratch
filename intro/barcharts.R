library(datasets)

?mtcars
head(mtcars)
summary(mtcars)

cylinders <- table(mtcars$cyl)
cylinders
barplot(cylinders)
plot(cylinders)
dev.off()
detach("package:datasets", unload = TRUE)
