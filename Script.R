##Análisis preliminar
install.packages("pacman")
require(pacman)
p_load(rio, skimr, stargazer, tidyverse)
datos_preliminares <- import("he1-taller-datos-apreliminar.dta")




## Punto 3 ##







##punto 6
reg_2 <- lm(falto ~ uso + edad, data= datos_preliminares)
stargazer(reg_2, 
          type= "html",
          dep.var.labels = c("inasistencia durante menstruacion"),
          covariate.labels = c("productos sanitarios", "edad"),
          out = "punto 1.6.docx"
          )














## Fin Punto 3##
=======
data_preliminar <- import("he1-taller-datos-apreliminar.dta")
>>>>>>> 52e76c1c391d9d40a77dfdbcb55dee2b0491d4e4
