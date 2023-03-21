cores <- read.table("C:/Users/Gabriel/Documents/Gabriel/UFAL/4º Periodo/Probabilidade e Estatistica/cores.txt", header = TRUE)

pessoas <- read.csv("salario.csv")

install.packages("xlsx")
library("xlsx")

pessoas1 <- read.xlsx("Pessoas.xlsx", sheetIndex = 1)

pessoas2 <- read.xlsx("Pessoas.xlsx", sheetName = "Página2")


tabela1 <- data.frame(Nome = c("João", "Gabriel", "Marcos", "Jorge"),
                      Idade = c(25, 32, 41, 31))

write.table(tabela1, "C:/Users/Gabriel/Documents/Gabriel/UFAL/4º Periodo/Probabilidade e Estatistica/tabela1.txt")

tabela2 <- data.frame(Nome = c("Jesus", "Davi", "Leandro", "Germano"),
                      Idade = c(33, 24, 10, 21))

write.csv(tabela2, "C:/Users/Gabriel/Documents/Gabriel/UFAL/4º Periodo/Probabilidade e Estatistica/tabela2.csv")

tabela3 <- data.frame(Name = c("Leonard", "Javale", "John", "Prescott"),
                      Age = c(22, 24, 26, 23), 
                      Salary = c(1200.00, 2500.50, 3000.00, 1000.00))
write.xlsx(tabela3, "salary.xlsx")
