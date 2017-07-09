NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
p=grep("Coal",SCC$EI.Sector)
SCC_sub=SCC[p,]
NEI_sub5=subset(NEI, NEI$SCC==unique(SCC_sub$SCC))
comb=merge(NEI_sub5,SCC_sub,by ="SCC")
comb$year=as.factor(comb$year)
comb$EI.Sector=as.factor(comb$EI.Sector)
p2=tapply(comb$Emissions,list(comb$year,comb$EI.Sector),sum,na.rm=TRUE)
p2=p2[,grepl("Coal", colnames(p2))]
p2=cbind(rownames(p2),p2)
colnames(p2)[1] <- "year"
p2 <- melt(p2, id=c("year"))
p2 <- p2[5:dim(p2)[1],]
colnames(p2)=c("Year","Coal_source","Emmission")
p5 <- ggplot(p2, aes(x=Year, y=Emmission, colour=Coal_source, group=Coal_source))+geom_line() +geom_point()+ggtitle("Coal Sources Related Emmission")
plot(p5)
