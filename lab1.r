#1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.

v1 <- "string"
class(v1)
## [1] "character"

v2 <- -1.7
class(v2)
## [1] "numeric"

v3 <- 9L # L вказує що це ціле число
class(v3)
## [1] "integer"

v4 <- 6+3i
class(v4)
## [1] "complex"

v5 <- TRUE
class(v5)
## [1] "logical"


#2.	Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.

vector1 <- 5:75
## [1]  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
## [26] 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
## [51] 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75

vector2 <- c(3.14, 2.71, 0, 13)
## [1]  3.14  2.71  0.00 13.00

vector3 <- 1:100
as.logical(vector3)
## [1] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [16] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [31] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [46] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [61] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [76] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE
## [91] TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE


#3.	Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind
##0.5	1.3	3.5
##3.9	131	2.8
##0	2.2	4.6
##2	7	5.1

matr1 <- matrix(data=c(0.5,3.9,0,2,1.3,131,2.2,7,3.5,2.8,4.6,5.1),ncol=3)
matr1
##      [,1]  [,2] [,3]
## [1,]  0.5   1.3  3.5
## [2,]  3.9 131.0  2.8
## [3,]  0.0   2.2  4.6
## [4,]  2.0   7.0  5.1

a<-c(0.5, 3.9, 0,2)
b<-c(1.3, 131, 2.2, 7)
c<-c(3.5, 2.8, 4.6, 5.1)
cbind(a,b,c)
##        a     b   c
## [1,] 0.5   1.3 3.5
## [2,] 3.9 131.0 2.8
## [3,] 0.0   2.2 4.6
## [4,] 2.0   7.0 5.1

e<-c(0.5, 1.3, 3.5)
f<-c(3.9, 131, 2.8)
g<-c(0, 2.2, 4.6)
h<-c(2.0, 7.0, 5.1)
rbind(e, f, g, h)

##   [,1]  [,2] [,3]
## e  0.5   1.3  3.5
## f  3.9 131.0  2.8
## g  0.0   2.2  4.6
## h  2.0   7.0  5.1


#4. Створити довільний список (list), в який включити всі базові типи.

l <- list("string", -1.7, 9L, TRUE, 6+3i)
l

## [[1]]
## [1] "string"

## [[2]]
## [1] -1.7

## [[3]]
## [1] 9

## [[4]]
## [1] TRUE

## [[5]]
## [1] 6+3i


#5.	Створити фактор з трьома рівнями «baby», «child», «adult».
f<-factor(c("baby","child","adult","adult"))
f
## [1] baby  child adult adult
## Levels: adult baby child


#6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.

mv<-c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)

is.na(mv)
##  [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE

match(NA,mv)
## [1] 5

x<-factor(is.na(mv))
table(x)
x
## FALSE  TRUE 
##     8     3 


#7.	Створити довільний data frame та вивести в консоль.

product <- c('potato', 'bred', 'milk', 'blackberry', 'beef')
count <- c(17, 5, 7, 4, 2)
recipt <- data.frame(product, count)
recipt

##       product count
## 1     potato    17
## 2       bred     5
## 3       milk     7
## 4 blackberry     4
## 5       beef     2


#8.	Змінити імена стовпців цього data frame.

colnames(recipt)[2]<-"g"
colnames(recipt)
## [1] "product" "g"

recipt
## product  g
## 1     potato 17
## 2       bred  5
## 3       milk  7
## 4 blackberry  4
## 5       beef  2
