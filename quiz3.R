url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(url,destfile = "./microdatasurvey",method="curl")
data <- read.csv("microdatasurvey")
head(data)
agricultureLogical <- data$AGS==6 & data$ACR==3
agricultureLogical
which(agricultureLogical)

url1 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
url2 <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(url1,destfile = "./gdp.csv",method = 'curl')
download.file(url2,destfile = "./edu.csv",method = 'curl')
gdp = read.csv("gdp.csv")
edu <- read.csv("edu.csv")
head(gdp)
head(edu)
mdata <- merge(gdp,edu,by="CountryCode")
