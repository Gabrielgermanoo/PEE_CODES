##LISTA 2

## Questão 1

n <- 3 # número de dias de observação
p <- 0.6 # probabilidade de sucesso (falha na rede)

# Calculando a distribuição de probabilidades
probs <- dbinom(x = 0:n, size = n, prob = p)
mean <- sum(0:n * probs)
mean


##Questão 2

n <- 40 # número de componentes
p <- 0.12 # probabilidade de defeito

# Calculando a probabilidade de X entre 3 e 5, inclusive
prob <- sum(dbinom(x = 3:5, size = n, prob = p))
