
fib <- function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fib(n - 1) + fib(n - 2))
  }
}


fib(10)
fib_values <- sapply(1:25, fib)
plot(1:25, fib_values, type = "o", col = "blue", xlab = "n", ylab = "Fibonacci(n)", main = "Fibonacci Sequence from 1 to 25")

