if (!require(readxl)) install.packages('readxl')
    library(readxl)

df <- read_excel("dados/umses_alunos_2018.xlsx")

idade1 <- subset(df, idade == 1)
idade2 <- subset(df, idade == 2)
idade3 <- subset(df, idade == 3)
idade4 <- subset(df, idade == 4)
idade6 <- subset(df, idade == 5)
idade6 <- subset(df, idade == 6)

md1 <- mean(idade1$tempogasto)
md1
md2 <- mean(idade2$tempogasto)
md2
md3 <- mean(idade3$tempogasto)
md3
md4 <- mean(idade4$tempogasto)
md4
md5 <- mean(idade5$tempogasto)
md5
md6 <- mean(idade6$tempogasto)
md6

idtemp <- data.frame(idade = c("Entre 16 e 20 anos" , "Entre 21 e 25 anos", "Entre 26 e 30 anos", "Entre 30 e 35 anos", "Entre 36 e 40 anos", "Acima de 40 anos"),
                     tempo = c(md1, md2, md3, md4, md5, md6))
idtemp

png(filename="graficos/aed_survey_idade_tempo_gasto.png", width = 1920, height = 1080, pointsize = 16)
barplot(idtemp$tempo, names.arg= idtemp$idade, main = "Tempo médio gasto em sites de redes sociais por idade" )

dev.off()
