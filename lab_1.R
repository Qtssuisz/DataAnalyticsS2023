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
hist(DALY, seq(30.,95.,1.), prob = TRUE)
lines(density(DALY, na.rm = TRUE, bw =1.))
rug(DALY)
plot(ecdf(DALY), do.points = FALSE, verticals = TRUE)
par(pty = "s")
qqnorm(DALY)
qqline(DALY)
detach(EPI_data)
