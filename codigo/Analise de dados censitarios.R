if (!require(readxl)) install.packages('readxl')
library(readxl)

df <- read_excel(file.choose())

head(df, 3)

#======= Trabalho de dados de genero ===========
sexo=table(df$genero)
sexo
lbls<-c("Masculino", "Feminino")
pct <- round(sexo/sum(sexo)*100, digits=1)
pct
lbls <- paste0(pct,"% ", lbls)
lbls
png(filename="grafico/aed_survey_sexo_tidy.png", width = 800, height = 500, pointsize = 16)
pie(sexo, labels = lbls, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Gênero dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de idade ===========
idade=table(df$idade)
idade
lbli<-c("Entre 16 e 20 anos", "Entre 21 e 25 anos", "Entre 26 e 30 anos", "Entre 30 e 35 anos", "Entre 36 e 40 anos", "Acima de 40 anos")
pcti <- round(idade/sum(idade)*100, digits=1)
pcti
lbli <- paste0(pcti, "%", lbli)
lbli
png(filename="grafico/aed_survey_idade.png", width = 800, height = 500, pointsize = 16)
pie(idade, labels = lbli, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Idade dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de situaçao ===========
situacao=table(df$profal)
situacao
lbls<-c("Aluno", "Prefiro não declarar")
pcts <- round(situacao/sum(situacao)*100, digits=1)
pcts
lbls <- paste0(pcts, "%", lbls)
lbls
png(filename="grafico/aed_survey_situacao.png", width = 800, height = 500, pointsize = 16)
pie(situacao, labels = lbls, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Situação dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de emprego ===========
trab=table(df$trabalha)
trab
lblt<-c("Desempregado", "Jornada parcial", "Jornada integral", "Estagiário", "Aposentado", "Bolsista")
pctt <- round(trab/sum(trab)*100, digits=1)
pctt
lblt <- paste0(pctt, "%", lblt)
lblt
png(filename="grafico/aed_survey_trabalho.png", width = 800, height = 500, pointsize = 16)
pie(trab, labels = lblt, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Situação Trabalhista dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de estado civil ===========
estadocivil=table(df$estadocivil)
estadocivil
lblec <- c("Solteiro", "Casado", "União Estável", "Separado")
pctec <- round(estadocivil/sum(estadocivil)*100, digits=1)
pctec
lblec <- paste0(pctec, "%", lblec)
lblec
png(filename="grafico/aed_survey_estadocivil.png", width = 800, height = 500, pointsize = 16)
pie(estadocivil, labels = lblec, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Estado civil dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de dependentes ===========
dependentes=table(df$filhos)
dependentes
lbld <- c("Sem filhos", "Um filho", "Dois filhos", "Três filhos")
pctd <- round(dependentes/sum(dependentes)*100, digits=1)
pctd
lbld <- paste0(pctd, "%", lbld)
lbld
png(filename="grafico/aed_survey_dependentes.png", width = 800, height = 500, pointsize = 16)
pie(dependentes, labels = lbld, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Dependentes dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados de idade dos dependentes ===========
idadedependente=table(df$idadefilho)
idadedependente
lbldi <- c("Sem filhos", "Entre 0 e 6 anos", "Entre 7 e 15 anos", "Entre 16 e 20 anos", "Acima de 20 anos")
pctdi <- round(dependentes/sum(dependentes)*100, digits=1)
pctdi
lbldi <- paste0(pctdi, "%", lbldi)
lbldi
png(filename="grafico/aed_survey_idade_dependentes.png", width = 800, height = 500, pointsize = 16)
pie(idadedependente, labels = lbldi, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Idade dos dependentes dos respondentes")
dev.off()
#===============================================

#======= Trabalho de dados - Número de Usuarios por rede social ===========
sm <- read_excel(file.choose())
sm
png(filename="grafico/aed_survey_redes_socias.png", width = 1920, height = 1080, pointsize = 16)
barplot(sm$Usuarios, main = "Numero de usuários por rede Social", names.arg = sm$`Rede Social`, ylim = c(0, 70)) 
dev.off()
#===============================================

#====== Trabalho de dados - Motivos de uso =========
mu <- read_excel(file.choose())
mu 
png(filename="grafico/aed_survey_motivos_uso.png", width = 1920, height = 1080, pointsize = 16)
barplot(mu$X__1, main = "Principais usos das redes sociais", names.arg = mu$Motivos, ylim = c(0, 70)) 
dev.off()
#===================================================

#====== Trabalho de dados - tempo gasto =========
tempogasto=table(df$tempogasto)
tempogasto
lbltg <- c("de 5 a 10 minutos", "de 10 a 30 minutes", "de 30 minutos até 1 hora", "de 1 a 2 horas", "de 2 a 3 horas", "de 3 a 4 horas" , "de 4 a 5 horas", "mais de 5 horas")
pcttg <- round(tempogasto/sum(tempogasto)*100, digits=1)
pcttg
lbltg <- paste0(pcttg, "%", lbltg)
lbltg
png(filename="grafico/aed_survey_tempo_gasto.png", width = 800, height = 500, pointsize = 16)
pie(tempogasto, labels = lbltg, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Tempo gasto na internet")
dev.off()
#===================================================

#====== Trabalho de dados - midia social deve ser utilizada pelos professores =========
uacad=table(df$usoacademico)
uacad
lblua <- c("Não", "Sim", "Sim, porém com restrições", "Não sei/Não tenho opinião")
pctua <- round(uacad/sum(uacad)*100, digits=1)
pctua
lblua <- paste0(pctua, "%", lblua)
lblua
png(filename="grafico/aed_survey_uso_academico.png", width = 800, height = 500, pointsize = 16)
pie(uacad, labels = lblua, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Midia social deve ser utilizado pelos professores")
dev.off()
#===================================================

#====== Trabalho de dados - melhor forma de se aproximar dos alunos =========
aprox=table(df$profchegaal)
aprox
lblap <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctap <- round(aprox/sum(aprox)*100, digits=1)
pctap
lblap <- paste0(pctap, "%", lblap)
lblap
png(filename="grafico/aed_survey_aprox_dos_alunos.png", width = 800, height = 500, pointsize = 16)
pie(aprox, labels = lblap, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Midia social é a melhor forma de aproximação Professor/Aluno")
dev.off()
#===================================================

#====== Trabalho de dados - alunos alcançarão melhores resultados? =========
mres=table(df$melhoraresul)
mres
lblmr <- c("Não", "Sim", "Não sei/Não tenho opinião")
pctmr <- round(mres/sum(mres)*100, digits=1)
pctmr
lblmr <- paste0(pctmr, "%", lblmr)
lblmr
png(filename="grafico/aed_survey_melhores_resultados.png", width = 800, height = 500, pointsize = 16)
pie(mres, labels = lblmr, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Midia social pode melhorar os resultados dos alunos")
dev.off()
#===================================================

#====== Trabalho de dados - Principais dificuldades =========
pd <- read_excel(file.choose())
pd 
png(filename="grafico/aed_survey_principais_dificuldades.png", width = 1920, height = 1080, pointsize = 16)
barplot(pd$X__1, main = "Principais dificuldades", names.arg = pd$`Principais Dificuldades`, ylim = c(0, 70)) 
dev.off()
#===================================================

#====== Trabalho de dados - Avaliação de recursos =========
infopais=table(df$evioinfo)
infopais
lblar <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctar <- round(infopais/sum(infopais)*100, digits=1)
pctar
lblar <- paste0(pctar, "%", lblar)
lblar
png(filename="grafico/aed_survey_informacao_pais.png", width = 800, height = 500, pointsize = 16)
pie(infopais, labels = lblar, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Envio de informações da escola para os pais")
dev.off()
#========
promocional = table(df$grandeuso)
promocional
lblpro <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctpro <- round(promocional/sum(promocional)*100, digits = 1)
pctpro
lblpro <- paste0(pctpro, "%", lblpro)
lblpro
png(filename="grafico/aed_survey_motivos_promocionais.png", width = 800, height = 500, pointsize = 16)
pie(promocional, labels = lblpro, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Instituições educacionais estão usando mídias sociais por motivos promocionais")
dev.off()
#========
grupoface = table(df$facegrupo)
grupoface
lblgf <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctgf <- round(grupoface/sum(grupoface)*100, digits = 1)
pctgf
lblgf <- paste0(pctgf, "%", lblgf)
lblgf
png(filename="grafico/aed_survey_grupos_facebook.png", width = 800, height = 500, pointsize = 16)
pie(grupoface, labels = lblgf, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Escolas usando grupos no Facebook para se comunicar com os alunos")
dev.off()
#========
infotrade = table(df$trocainfo)
infotrade
lblit <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctit <- round(infotrade/sum(infotrade)*100, digits = 1)
pctit
lblit <- paste0(pctit, "%", lblit)
lblit
png(filename="grafico/aed_survey_troca_informacoes.png", width = 800, height = 500, pointsize = 16)
pie(infotrade, labels = lblit, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Troca de arquivos, entre grupos por meio do aplicativo do Facebook")
dev.off()
#=========
compinfo = table(df$compinfopal)
compinfo
lblci <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctci <- round(compinfo/sum(compinfo)*100, digits = 1)
pctci
lblci <- paste0(pctci, "%", lblci)
lblci
png(filename="grafico/aed_survey_compartilhar_info.png", width = 800, height = 500, pointsize = 16)
pie(compinfo, labels = lblci, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Estudantes e professores podem compartilhar informações entre si")
dev.off()
#========
pinterest = table(df$quadrovirtual)
pinterest
lblpin <- c("Excelente", "Bom", "Indiferente", "Pobre", "Muito pobre")
pctpin <- round(pinterest/sum(pinterest)*100, digits = 1)
pctpin
lblpin <- paste0(pctpin, "%", lblpin)
lblpin
png(filename="grafico/aed_survey_pinterest_lousa_digital.png", width = 800, height = 500, pointsize = 16)
pie(pinterest, labels = lblpin, edges = 100, angle = 45, col = c("blue","purple", "green3"), border = NULL,
    lty = NULL, main = "Utilização do Pinterest como lousa digital")
dev.off()
#========================================================================