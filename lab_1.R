library(xlsx)
library(xlsxjars)
#EPI_data <- read.csv("~/desktop/Spring 2023/Data Analytics/Data/EPI_data.csv")
EPI_data <- read.xlsx("~/desktop/Spring 2023/Data Analytics/Data/2010EPI_data.xls",sheetName = "EPI2010_all countries")
EPI_data
View(EPI_data)
#names(EPI_data) <- EPI_data[1, ]
#EPI_data <- EPI_data[-1, ]
attach(EPI_data)
EPI <- as.numeric(EPI)
tf <- is.na(EPI)
EPI <- EPI[!tf]
EPI
summary(EPI)
fivenum(EPI, na.rm = TRUE) #min 1st_Qu Med 3rd_Qu Max
stem(EPI)
hist(EPI)
hist(EPI, seq(30.,95.,1.), prob = TRUE)
lines(density(EPI, na.rm = TRUE, bw =1.))
rug(EPI)
plot(ecdf(EPI), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(EPI)
qqline(EPI)

#x <- seq(30,95,1)
#qqplot(qt(ppoints(250),df = 5), x, xlab = "Q-Q plot for tdsn")
#qqline(x)

DALY
class(DALY)
DALY <- as.numeric(DALY)
tf <- is.na(DALY)
DALY <- DALY[!tf]
summary(DALY)
fivenum(DALY)
stem(DALY)
hist(DALY)
hist(DALY, seq(0.,100.,1.), prob = TRUE)
lines(density(DALY, na.rm = TRUE, bw =1.))
rug(DALY)
plot(ecdf(DALY), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(DALY)
qqline(DALY)

ENVHEALTH
ENVHEALTH <- as.numeric(ENVHEALTH)
tf <- is.na(ENVHEALTH)
ENVHEALTH <- ENVHEALTH[!tf]

ECOSYSTEM
ECOSYSTEM <- as.numeric(ECOSYSTEM)
tf <- is.na(ECOSYSTEM)
ECOSYSTEM <- ECOSYSTEM[!tf]

AIR_H
AIR_H <- as.numeric(AIR_H)
tf <- is.na(AIR_H)
AIR_H <- AIR_H[!tf]

WATER_H
WATER_H <- as.numeric(WATER_H)
tf <- is.na(WATER_H)
WATER_H <- WATER_H[!tf]

AIR_E
AIR_E <- as.numeric(AIR_E)
tf <- is.na(AIR_E)
AIR_E <- AIR_E[!tf]

WATER_E
WATER_E <- as.numeric(WATER_E)
tf <- is.na(WATER_E)
WATER_E <- WATER_E[!tf]

BIODIVERSITY
BIODIVERSITY <- as.numeric(BIODIVERSITY)
tf <- is.na(BIODIVERSITY)
BIODIVERSITY <- BIODIVERSITY[!tf]
boxplot(EPI, EPI, ENVHEALTH, ECOSYSTEM, DALY, AIR_H, WATER_H, AIR_E, WATER_E, BIODIVERSITY)

EPILand<-EPI[!Landlock]
EPILand <- EPILand[!is.na(EPILand)]
EPILand
hist(EPILand)
hist(EPILand, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPILand, na.rm = TRUE, bw =1.))
rug(EPILand)
plot(ecdf(EPILand), do.points = FALSE, verticals = TRUE)
qqnorm(EPILand)
qqline(EPILand)

EPINSW <- EPI[!No_surface_water]
EPINSW <- EPINSW[!is.na(EPINSW)]
EPINSW
hist(EPINSW)
hist(EPINSW, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPINSW, na.rm = TRUE, bw =1.))
rug(EPINSW)
plot(ecdf(EPINSW), do.points = FALSE, verticals = TRUE)
qqnorm(EPINSW)
qqline(EPINSW)

EPIDes <- EPI[!Desert]
EPIDes <- EPIDes[!is.na(EPIDes)]
EPIDes
hist(EPIDes)
hist(EPIDes, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPIDes, na.rm = TRUE, bw =1.))
rug(EPIDes)
plot(ecdf(EPIDes), do.points = FALSE, verticals = TRUE)
qqnorm(EPIDes)
qqline(EPIDes)

EPIPD <- EPI[!High_Population_Density]
EPIPD <- EPIPD[!is.na(EPIPD)]
EPIPD
hist(EPIPD)
hist(EPIPD, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPIPD, na.rm = TRUE, bw =1.))
rug(EPIPD)
plot(ecdf(EPIPD), do.points = FALSE, verticals = TRUE)
qqnorm(EPIPD)
qqline(EPIPD)

boxplot(EPILand, EPINSW, EPIDes, EPIPD)

install.packages("stringr")
library(stringr)

EPI_regions
GEO_subregion
EPI_South_Asia <- Country[grepl("South Asia", EPI_regions)]
EPI_South_Asia

detach(EPI_data)
