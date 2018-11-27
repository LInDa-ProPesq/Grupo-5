if (!require(readxl)) install.packages('readxl')
library(readxl)

df <- read_excel("dados/umses_alunos_2018.xlsx")

contato <- df[df$contato == 1,]
atualizado <- df[df$atualizado == 1,]
preencher <- df[df$preencher == 1,]
encontrar <- df[df$encontrar == 1,]
compopiniao <- df[df$compopiniao == 1,]
compfoto <- df[df$compfoto == 1,]
amigosja <- df[df$amigosja == 1,]
profnetwork <- df[df$profnetwork == 1,]
novaamizade <- df[df$novaamizade == 1,]
compdetalhe <- df[df$compdetalhe == 1,]

aprox=table(contato$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para ficar em contato com o que os amigos estão fazendo", lblap)

aprox=table(atualizado$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para manter-se atualizado com notícias e eventos atuais", lblap)

aprox=table(preencher$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para preencher o tempo livre", lblap)

aprox=table(encontrar$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para encontrar conteúdo interessante e/ou divertido", lblap)

aprox=table(compopiniao$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para compartilhar opiniões", lblap)

aprox=table(compfoto$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para compartilhar fotos ou vídeos com outras pessoas", lblap)

aprox=table(amigosja$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Porque os amigos já estão neles", lblap)

aprox=table(profnetwork$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Realizar networking profissional com outras pessoas", lblap)

aprox=table(novaamizade$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Conhecer novas pessoas", lblap)

aprox=table(compdetalhe$melhoraresul)
if (is.na(aprox['1']))
  aprox['1'] <- 0
if (is.na(aprox['2']))
  aprox['2'] <- 0
if (is.na(aprox['3']))
  aprox['3'] <- 0
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
if (is.na(pctap['1']))
  pctap['1'] <- 0
if (is.na(pctap['2']))
  pctap['2'] <- 0
if (is.na(pctap['3']))
  pctap['3'] <- 0
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Compartilhar detalhes e assuntos de trabalho", lblap)