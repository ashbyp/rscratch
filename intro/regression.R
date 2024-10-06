pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, ggvis, httr, 
               lubridate, plotly, rio, rmarkdown, shiny, stringr, tidyr)

library(datasets)
?USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings

x <- as.matrix(data[-12])  # don't read retention, we will predict that
y <- data[, 12]            # the truth variable

# either of these
reg1 <- lm(y ~ x)
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG + DECI + PREP +
             FAMI + ORAL + WRIT + PHYS, data = USJudgeRatings)

reg1
summary(reg1)
anova(reg1)
coef(reg1)
confint(reg1)
resid(reg1)
hist(residuals(reg1))

p_load(lars, caret)


stepwise <- lars(x, y, type = "stepwise")

# etc

rm(list=ls())  # removes objects from environment
detach("package:datasets", unload = TRUE)
