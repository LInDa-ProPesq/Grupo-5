idtempo <- read_excel(file.choose())
idtempo
idade1 <- subset(idtempo, idade == 1) 
idade2 <- subset(idtempo, idade == 2) 
idade3 <- subset(idtempo, idade == 3)
idade4 <- subset(idtempo, idade == 4) 
idade6 <- subset(idtempo, idade == 6) 

md1 <- mean(idade1$tempogasto)
md1
md2 <- mean(idade2$tempogasto)
md2
md3 <- mean(idade3$tempogasto)
md3
md4 <- mean(idade4$tempogasto)
md4
md6 <- mean(idade6$tempogasto)
md6

idtemp <- data.frame(idade = c("Entre 16 e 20 anos" , "Entre 21 e 25 anos", "Entre 26 e 30 anos", "Entre 30 e 35 anos", "Acima de 40 anos"),
                     tempo = c(5.653846, 6.4375, 3.25, 6, 4.333333))
idtemp

png(filename="grafico/aed_survey_idade_tempo_gasto.png", width = 1920, height = 1080, pointsize = 16)
barplot(idtemp$tempo, names.arg= idtemp$idade, main = "Tempo médio gasto em sites de redes sociais por idade" )

dev.off()