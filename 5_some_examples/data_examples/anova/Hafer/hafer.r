setwd("~/Teaching/Bio144/data_examples/anova/Hafer/")
d.hafer <- read.table("hafer.dat",header=T)

boxplot(YIELD ~ GROUP, d.hafer)

plot(d.hafer$GROUP,d.hafer$YIELD,xlim=c(0.5,3.5),
     xaxt="n",xlab="",ylab="YIELD")
axis(1,at=c(1,2,3),labels=c("Group 1","Group 2","Check"))
text(d.hafer$GROUP+0.08,d.hafer$YIELD,labels=d.hafer$REP,cex=1.3)

d.hafer$GROUP <- factor(d.hafer$GROUP)

r.hafer <- aov(YIELD ~ GROUP,d.hafer)
summary(r.hafer)


r.hafer <- aov(YIELD ~ REP,d.hafer)
summary(r.hafer)
anova(r.hafer)
