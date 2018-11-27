if (!require(readxl)) install.packages('readxl')
library(readxl)

df <- read_excel("dados/umses_alunos_2018.xlsx")

naousa <- df[df$tempogasto == 1,]
cinco_dez <- df[df$tempogasto == 2,]
dez_trinta <- df[df$tempogasto == 3,]
trinta_sessenta <- df[df$tempogasto == 4,]
sessenta_120 <- df[df$tempogasto == 5,]
centoevinte_180 <- df[df$tempogasto == 6,]
centoeoitenta_240 <- df[df$tempogasto == 7,]
duzentosequarenta_300 <- df[df$tempogasto == 8,]
mais_300 <- df[df$tempogasto == 9,]

aprox=table(naousa$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("Não usa", lblap)

aprox=table(cinco_dez$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 5 a 10 minutos", lblap)

aprox=table(trinta_sessenta$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 15 a 30 minutos", lblap)

aprox=table(sessenta_120$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 1 a 2 horas", lblap)

aprox=table(centoevinte_180$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 2 a 3 horas", lblap)

aprox=table(centoeoitenta_240$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 3 a 4 horas", lblap)

aprox=table(duzentosequarenta_300$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("De 4 a 5 horas", lblap)

aprox=table(mais_300$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap['1'], "% ", "Não ", pctap['2'], "% ", "Sim ", pctap['3'], "% ", "Não sei/Não tenho opinião")
cat("Mais de 5 horas", lblap)
