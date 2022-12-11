#1.	Функція add2(x, y), яка повертає суму двох чисел.

add2<-function(x,y){x+y}
add2(1,1)
##[1] 2

#2.	Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10.

above<-function(x,n=10){x[x>n]}
v<-c(2,3,5,9,11,14,15)
above(v,6)
## [1]  9 11 14 15

#3.	Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.

my_ifelse <- function(x, exp, n) {
    if (exp == "<") {
        return(x[which(x < n)])
    } else if (exp == ">") {
        return(x[which(x > n)])
    } else if (exp == "<=") {
        return(x[which(x <= n)])
    } else if (exp == ">=") {
        return(x[which(x >= n)])
    } else if (exp == "==") {
      return(x[which(x == n)])
    } else {
        return(x)
    }
}
v <- c(-36, 231, 17, -12, 54, 632, 47, 8)
print(my_ifelse(v, ">", 31))
## [1] 231  54 632  47


#4.	Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.
columnmean<- function(x, removeNA=TRUE){
  res<-c()
  for (el in 1:ncol(x)){
    res<-c(res, mean(x[ ,el], na.rm=removeNA))
  }
  return(res)
}

y <- data.frame(a = rnorm(100), b = 1:1000, cc = rnorm(1000))
m <- matrix(data=c(0.8, NA, 2, 1.1, NA, 9.2, 5, NA, 2.5),ncol=3)

columnmean(y, FALSE)
## [1]   0.12128735 500.50000000  -0.08313734
columnmean(m, TRUE)
## [1] 1.40 5.15 3.75
