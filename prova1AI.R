p_teacher <- 0.67
p_student <- 0.25

p_neither <- (1 - p_teacher) * (1 - p_student)

p_solution <- 1 - p_neither

round(p_solution * 100, 2)



## Questão 3

p <- 2/3
n <- 5
k <- 3
nck <- choose(n, k)
prob <- nck * p^k * (1 - p)^(n - k)
prob

## Questão 4

##Alternativa a
# Definir os parâmetros da distribuição binomial
n <- 20
p <- 0.8

# Calcular a probabilidade de não mais do que seis alunos aumentarem seus conhecimentos
prob <- pbinom(q = 6, size = n, prob = p, lower.tail = TRUE)

# Imprimir o resultado
round(prob, 3)


## ALternativa b
# Definir os parâmetros da distribuição binomial
n <- 20
p <- 0.8

# Calcular a probabilidade de pelo menos cinco alunos aumentarem seus conhecimentos
prob <- 1 - sum(dbinom(0:4, size = n, prob = p))

# Imprimir o resultado
prob

## Questão 5
#Letra A

# Médias e desvios padrão dos custos
media_cf <- 1000
desvio_cf <- 17
media_mp <- 4000
desvio_mp <- 2 * 17
media_mo <- 2000
desvio_mo <- 17 / 2

# Média e desvio padrão do custo total
media_ct <- media_cf + media_mp + media_mo
desvio_ct <- sqrt(desvio_cf^2 + desvio_mp^2 + desvio_mo^2)

# Probabilidade do custo total estar entre 6.170 e 7.217
z1 <- (6170 - media_ct) / desvio_ct
z2 <- (7217 - media_ct) / desvio_ct
prob <- pnorm(z2) - pnorm(z1)

round(prob * 100, 2)

#Letra b

prob2 <- qnorm(0.85, mean = media_ct, sd = desvio_ct)
prob2

##Questão 6

#Letra A

# Given data
p_A1 <- 0.17
p_A2 <- 0.30
p_A3 <- 0.53
p_B_given_A1 <- 0.015
p_B_given_A2 <- 0.02
p_B_given_A3 <- 0.0275

# Probability of finding a defective product during the inspection
p_B <- p_A1 * p_B_given_A1 + p_A2 * p_B_given_A2 + p_A3 * p_B_given_A3

round(p_B, 4)

#Letra B
# Probabilidade de ser uma vacina inglesa dado que a vacina é defeituosa
P_A2_given_B <- 0.30 * 0.02 / (0.17 * 0.015 + 0.30 * 0.02 + 0.53 * 0.0275)

# Exibir resultado
cat("A probabilidade de ser uma vacina inglesa dado que a vacina é defeituosa é:", P_A2_given_B)



## Questão 7

lambda <- 97/200
prob_3_falhas <- dpois(3, lambda)
prob_3_em_5 <- dbinom(3, 5, prob_3_falhas)
prob_3_em_5
