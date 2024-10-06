
fib <- function(n) {
  if (n <= 1) {
    return(n)
  } else {
    return(fib(n - 1) + fib(n - 2))
  }
}

fib_values <- sapply(1:20, fib)
plot(1:20, fib_values, type = "o", col = "blue", xlab = "n", ylab = "Fibonacci(n)", main = "Fibonacci Sequence from 1 to 20")

fib(10)

filter(eng.1, V1==1)