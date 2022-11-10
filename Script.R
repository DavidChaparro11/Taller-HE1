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






##punto 6
reg_2 <- lm(falto ~ uso + edad, data= Base2)
stargazer(reg_2, 
          type= "html",
          dep.var.labels = c("inasistencia durante menstruacion"),
          covariate.labels = c("productos sanitarios", "edad"),
          out = "punto 1.6.doc"
          )









