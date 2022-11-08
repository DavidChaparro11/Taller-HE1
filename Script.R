##Análisis preliminar
install.packages("pacman")
require(pacman)
p_load(rio, skimr, stargazer, tidyverse)
datos_preliminares <- import("he1-taller-datos-apreliminar.dta")




## Punto 3 ##
reg_1 = lm(falto~uso, data=datos_preliminares)
summary (reg_1)
stargazer(reg_1,  type="html", dep.var.labels = c("Niñas que faltaron a clase por lo menos uno de sus periodos menstruales"), 
          covariate.labels = c("Niñas que usan productos sanitarios durante su periodo menstrual"),
          out="punto.doc")












