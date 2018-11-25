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
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para ficar em contato com o que os amigos estão fazendo", lblap)

aprox=table(atualizado$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para manter-se atualizado com notícias e eventos atuais", lblap)

aprox=table(preencher$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para preencher o tempo livre", lblap)

aprox=table(encontrar$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para encontrar conteúdo interessante e/ou divertido", lblap)

aprox=table(compopiniao$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para compartilhar opiniões", lblap)

aprox=table(compfoto$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Para compartilhar fotos ou vídeos com outras pessoas", lblap)

aprox=table(amigosja$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Porque os amigos já estão neles", lblap)

aprox=table(profnetwork$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Realizar networking profissional com outras pessoas", lblap)

aprox=table(novaamizade$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Conhecer novas pessoas", lblap)

aprox=table(compdetalhe$melhoraresul)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
cat("Compartilhar detalhes e assuntos de trabalho", lblap)