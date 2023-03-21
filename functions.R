area <- function(b, h){
  A <- (b*h)/2
  return(A)
}

area(5,3)

raizes <- function(a,b, c){
  delta <- b^2 - 4*a*c
  if(delta< 0){
    cat("Raizes Complexas")
  }else{
    raiz1 <- (-b - sqrt(delta))/ (2*a)
    raiz2 <- (-b + sqrt(delta))/ (2*a)
    cat("As raizes são ", raiz1, " e ", raiz2)
  }
}
raizes(1,7,6)
