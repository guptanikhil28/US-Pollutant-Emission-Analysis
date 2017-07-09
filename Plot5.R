NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
NEI_sub=subset(NEI,NEI$fips =="24510")
comb=merge(NEI_sub,SCC,by ="SCC")
comb$EI.Sector=as.character(comb$EI.Sector)
p=grep("Vehicles",comb$EI.Sector)
comb_sub=comb[p,]
comb_sub$year=as.factor(comb_sub$year)
comb_sub$EI.Sector=as.factor(comb_sub$EI.Sector)
p2=tapply(comb_sub$Emissions,list(comb_sub$year,comb_sub$EI.Sector),sum,na.rm=TRUE)
p2=cbind(rownames(p2),p2)
colnames(p2)[1] <- "year"
p2 <- melt(p2, id=c("year"))
p2 <- p2[5:dim(p2)[1],]
colnames(p2)=c("Year","mobile_source","Emmission")
p5 <- ggplot(p2, aes(x=Year, y=Emmission, colour=mobile_source, group=mobile_source))+geom_line() +geom_point()+ggtitle("Mobile Sources Related Emmission")
plot(p5)
