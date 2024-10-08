library(datasets)
?lynx
head(lynx)

hist(mtcars$wt)
hist(mtcars$mpg)

hist(lynx)

hist(lynx,
     breaks = 14, # bins
     freq = FALSE, # density instead of freq
     col = "thistle1",
     main = paste("Histogram of Annual Canadian Lynx", 
                  "Trappings, 1821-1934"),
     xlab = "Number of Lynx Trapped")

curve(
  dnorm(x, mean = mean(lynx), sd = sd(lynx)),
  col = "thistle4",
  lwd = 2,
  add = TRUE
)

lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)

rug(lynx, lwd = 2, col = "gray")


dev.off()
detach("package:datasets", unload = TRUE)