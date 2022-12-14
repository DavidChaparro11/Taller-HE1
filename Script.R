##Análisis preliminar
install.packages("pacman")
require(pacman)
p_load(rio, skimr, stargazer, tidyverse)
datos_preliminares <- import("he1-taller-datos-apreliminar.dta")
Base2= na.omit(datos_preliminares)


## Punto 3 ##
reg_1 = lm(falto~uso, data=Base2)
summary (reg_1)
stargazer(reg_1,  type="html", dep.var.labels = c("Niñas que faltaron a clase por lo menos uno de sus periodos menstruales"), 
          covariate.labels = c("Niñas que usan productos sanitarios durante su periodo menstrual"),
          out="punto3D.doc")




##3.2
muestra_3.2.5 <- subset(he1_taller_datos_experimento, periodo >=1, despues>=1 )
reg_325 <- lm(asistencia ~ tratamiento, data=muestra_3.2.5)
summary(reg_3.2.5)

stargazer(reg_3.2.5, type="html", out ="punto325")

stargazer(reg_3.2.5)

##punto 6
reg_2 <- lm(falto ~ uso + edad, data= Base2)
stargazer(reg_2, 
          type= "html",
          dep.var.labels = c("inasistencia durante menstruacion"),
          covariate.labels = c("productos sanitarios", "edad"),
          out = "punto 1.6.doc"
          )


##punto 7
reg_3 <- lm(falto ~ uso + edad+ ingreso, data = Base2)
stargazer(reg_1, reg_2, reg_3,
          type= "html",
          dep.var.labels = c("inasistencia durante menstruacion"),
          covariate.labels = c("productos sanitarios", "edad" , "Ingreso"),
          out = "punto 1.7.doc"
)


##Parte experimental
base_survey <- import("he1-taller-datos-baselinesurvey.dta")
 sum_tratamiento <- summary(base_survey$tratamiento)
stargazer(sum_tratamiento)
base_survey %>% count(tratamiento == 1)

cuenta<-base_survey %>% group_by(tratamiento) %>% summarize(edumadre=mean(edumadre,na.rm=T), 
                                                            n=n(),) 
stargazer(data.frame(cuenta),summary=FALSE,type="text")



cuenta2<-base_survey %>% group_by(tratamiento) %>% summarize(edumadre=mean(edumadre,na.rm=T),
                                                             edupadre=mean(edupadre,na.rm=T),
                                                             ingreso=mean(ingreso,na.rm=T),
                                                             edad=mean(edad,na.rm=T),
                                                             hindu_padre=mean(hindu_padre, na.rm=T),
                                                            n=n(),) 

stargazer(data.frame(cuenta2),summary=FALSE,type="text")
eduamdre <- base_survey %>% group_by(tratamiento) %>% t.test()
base_survey_2
t.test()
