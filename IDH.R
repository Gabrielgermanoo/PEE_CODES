dados <- data.frame(Paises = c("Alemanha", "Barbados", "Brasil", "Cuba", 
                               "Egito", "Iraque", "Jamaica", "Noruega", "Zimbabue"),
                    IDH = c(0.920, 0.825, 0.730, 0.780, 0.662, 0.590,
                            0.730, 0.955, 0.397))

dados$Nivel <- 0

for(i in 1:9){
  ifelse(dados[i, 2] <= 0.534, dados[i, 3] <-"Baixo",
         ifelse(dados[i,2] <= 0.710, dados [i,3] <- "Médio",
                ifelse(dados[i,2] <= 0.796, dados [i,3] <- "Elevado", dados[i,3] <- "Muito Elevado")))
}
