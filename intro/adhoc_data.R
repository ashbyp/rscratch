

x0 <- 1
x1 <- 0:10
x2 <- 10:0

?seq

(x3 <- seq(10))
(x4 <- seq(30, 0, by = -3))

(x5 <- c(5, 4, 1, 6, 7))

(x6 <- scan())
x6

x7 <- rep(TRUE, 5)
x7

x8 <- rep(c(T, F), 5)
x8

x9 <- rep(c(T, F), each = 5)
x9

rm(list=ls())  # removes objects from environment
