NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI$year=as.factor(NEI$year)
p=tapply(NEI$Emissions,NEI$year,sum,na.rm=TRUE)
plot(names(p),p, type= "b",xlab = "Year",ylab = "Total Emissions", main="Total Emission vs Year",col="red")

