dados <- c(10, 15, 9, 7, 6)

n <- length(dados)

soma <- 0

for(i in 1: n){
  soma <- dados[i] + soma
}

media <- soma/n
media

#### Fibonacci

x <- 0
x[1] <- 1
x[2] <- 1

for(i in 3:30){
  x[i] <- x[i-1] + x[i-2]
}

### using dataframes

dados <- data.frame( Temp = c(27, 19, 12, 35, 37, 22, 14))
dados
dados$Nivel <- 0
for(i in 1:7){
  ifelse( dados[i, 1] <15, dados[i,2] <- "Baixa", 
          ifelse(dados[i,1] < 25, dados[i, 2] <- "Média", dados [i, 2] <- "Elevada"))
}
dados
