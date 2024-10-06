

n1 <- 15  # double by default
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)

c2 <- 'A string'
c2
typeof(c2)

l1 <- TRUE
l1
typeof(l1)

l1 <- F
l1
typeof(l1)

# structures

vec1 <- c(1, 2, 3, 4, 5)
vec1
typeof(vec1)
is.vector(vec1)

vec2 <- c("1", "2", "3", "4", "5")
vec2
typeof(vec2)
is.vector(vec2)

vec3 <- c(T, F)
vec3
typeof(vec3)
is.vector(vec3)

m1 <- matrix(c(T, T, F, F, T, F), nrow=2)
m1

m2 <- matrix(c('a', 'b', 
               'c', 'd'),
             nrow = 2,
             byrow = T)
m2

a1 <- array(c(1:24), c(4, 3, 2))
a1



vNumeric <- c(1, 2, 3)
vChar <- c('a', 'b', 'c')
vLogical <- c(T, F, T)
dfa <- cbind(vNumeric, vChar, vLogical)
dfa

df <- as.data.frame(cbind(vNumeric, vChar, vLogical))
df


o1 <- c(1, 2, 3)
o1
o2 <- c('a', 'b', 'c')
o2
o3 <- c(T, F, T)
o3

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, list1)
list2

((coerce1 <- c(1, "b", T)))
typeof(coerce1)

(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

(coerce4 <- c('1', '2', '3'))
typeof(coerce4)

(coerce5 <- as.numeric(coerce4))
typeof(coerce5)

(coerce6 <- matrix(1:9, nrow=3))
(coerce7 = as.data.frame(coerce6))
is.data.frame(coerce7)

rm(list=ls())  # removes objects from environment



