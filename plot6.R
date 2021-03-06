NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI_sub=subset(NEI,NEI$fips == c("24510","06037"))
comb=merge(NEI_sub,SCC,by ="SCC")
comb$EI.Sector=as.character(comb$EI.Sector)
p=grep("Vehicles",comb$EI.Sector)
comb_sub=comb[p,]
comb_sub$year=as.factor(comb_sub$year)
comb_sub$fips=as.factor(comb_sub$fips)
p2=tapply(comb_sub$Emissions,list(comb_sub$year,comb_sub$fips),sum,na.rm=TRUE)
p2=cbind(rownames(p2),p2)
colnames(p2)<- c("year","Los_angeles","Baltimore")
p2 <- melt(p2, id=c("year"))
p2 <- p2[5:dim(p2)[1],]
colnames(p2)=c("Year","City","Emmission")
p5 <- ggplot(p2, aes(x=Year, y=Emmission, colour=City))+geom_line(aes(group=City)) +geom_point(aes(group=City))+ggtitle("City based Emmission")
plot(p5)
