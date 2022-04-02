library(MASS)

head(wtloss)

plot(wtloss$Days, wtloss$Weight)

cor(wtloss, method = "pearson")
