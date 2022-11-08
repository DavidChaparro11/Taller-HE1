##Análisis preliminar
install.packages("pacman")
require(pacman)
p_load(rio, skimr, stargazer, tidyverse)
data_preliminar <- import("he1-taller-datos-apreliminar.dta")
