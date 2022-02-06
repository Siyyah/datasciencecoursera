x <- c(0.5,06) ##numeric lenght 2, first and second elements
x <- c(TRUE, FALSE) ##logical
x <- c(T,F) ##logical
x <- c("a", "b","c") ##character
x <- 9:29 ##intege

##using vector function
x<- vector("numeric", length = 10)

#explicit Coercion
as.characters(x) ##converts class of the function, not always work, non sesible ones will convert to NA

#list
x<- list(2,"a", TRUE, 1+4i)