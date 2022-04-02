# 
x <- seq(-10, 10, by = 0.1)
y <- dnorm(x, mean = 5, sd = 1)
plot(x, y, type = "l", lwd = 4, col = "darkred")

# ------------------------------------------------

# Distribuição Normal Padrão
media_anual <- 1500
desvio_padrao <- 300
precipitacao <- 1800

pnorm(precipitacao, media_anual, desvio_padrao, lower.tail = FALSE)

# -----------------------------------------------------------------------

x <- seq(-4,4,length=200)
y <- dnorm(x)
plot(x,y,type="l", lwd=2, col="orange")
x <- seq(-1,1,length=100)
y <- dnorm(x)
polygon(c(-1,x,1),c(0,y,0),col="purple")
