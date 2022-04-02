#Importando a biblioteca Library
library(readr)

#Lendo a tabela em CSV2
read.csv2("tabela_1.csv")

#Alocando a leitura do CSV para uma variavel
tabela1 <- read_csv2("tabela_1.csv")

#Para ver a tabela criada
View(tabela1)

#Resumo dos valores
summary(tabela1)

#Média da coluna valores já¡ importada no R
mean(tabela1$Valores)

#Resumo da coluna valores com apenas 3 digitos
summary(tabela1, digits = 3)
