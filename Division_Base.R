library(dplyr)
library(rio)
colnames(dataF)[c(6)]<-c("asistencia")


dataCBI <- dataF %>%
  filter(asistencia == "Transferencia en efectivo (CBI)")

dataHTL <- dataF %>%
  filter(asistencia == "Línea de orientación telefónica (Hotline)")
  
dataVBG <- dataF %>%
  filter(asistencia == "Asistencia a sobrevivientes de Violencia Basada en Género")  
  
#Esto se puede hacer con un loop

colnames(dataCBI)[c(6)]<-c("group_Interview/type_assist_peru")
colnames(dataHTL)[c(6)]<-c("group_Interview/type_assist_peru")
colnames(dataVBG)[c(6)]<-c("group_Interview/type_assist_peru")

export(dataCBI, "dataCBI.xlsx")
export(dataHTL, "dataHTL.xlsx")
export(dataVBG, "dataVBG.xlsx")