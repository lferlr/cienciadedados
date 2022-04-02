#Importando a biblioteca Library
library(readr)

#Lendo a tabela em CSV2
read.csv2("tabela_2.csv")

#Alocando a leitura do CSV para uma variavel
tabela2 <- read_csv2("tabela_2.csv")

#Para ver a tabela criada
View(tabela2)

#Resumo dos valores
summary(tabela2)

#Média da coluna valores já importada no R
mean(tabela2$'Valores 3')

tabela2$media <- 0

View(tabela2)

#Calculando a média de cada linha (Somando cada valor da linha 1 dividindo por 4 "Qtd de Valores de uma linha" e assim por diante)
for(i in 1:12) { tabela2$media[i] <- sum(tabela2[i,c("Valores 1", "Valores 2", "Valores 3", "Valores 4")]) / 4 }

#Simplificando o For anterior, realizando uma separação com variáveis
nlinhas <- nrow(tabela2)
colunas <- c("Valores 1", "Valores 2", "Valores 3", "Valores 4")
ncolunas <- length(colunas)
tabela2$media2 <- 0

#Calculando a média de cada linha (Somando cada valor da linha 1 dividindo por 4 "Qtd de Valores de uma linha" e assim por diante)
for(i in 1:nlinhas) { tabela2$media2[i] <- sum(tabela2[i, colunas]) / ncolunas }

#Variância da amostra da coluna Valores 1
var(tabela2$`Valores 1`)

#Desvio padrão
sd(tabela2$`Valores 1`)

#------------------------------------------
#Calculo do Coeficiente

media <- mean(tabela2$`Valores 1`)
desvioPadrao <- sd(tabela2$`Valores 1`)

coeficiente <- desvioPadrao/media
coeficiente
