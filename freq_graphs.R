library(ggplot2)

sitch_freq <- read.csv("~/Desktop/sitch_freq.csv")

mf <- sitch_freq[[4]]
mp <- sitch_freq[[5]]
mets <- data.frame(x=mf, y=mp)

yf <- sitch_freq[[1]]
yp <- sitch_freq[[2]]

yankees <- data.frame(x=yf, y=yp)

bbi<-element_text(face="bold.italic", color="black")

metslogplot <- ggplot(mets, aes(x=x,y=y)) +
  geom_point(alpha=1, size=1.5, col ="steelblue4") +
  geom_abline(intercept=0.45, slope=-0.145, col="red") +
  scale_y_continuous(labels= scales::percent, name="Deviation from norm") +
  scale_x_log10(limits=c(1,1000), breaks=(c(1,10,100,1000)), name="Frequency") +
  labs(title="9th Inning Scenarios: Mets") +
  theme(legend.position='none', title=bbi)

yankeeslogplot <- ggplot(yankees, aes(x=x,y=y)) +
  geom_point(alpha=1, size=1.5, col = "steelblue4") + 
  geom_abline(intercept=0.45, slope=-0.145, col="red") +
  scale_y_continuous(labels= scales::percent, name="Deviation from norm") +
  scale_x_log10(limits=c(1,1000), breaks=(c(1,10,100,1000)), name="Frequency") +
  labs(title="9th Inning Scenarios: Yankees") +
  theme(legend.position='none', title=bbi)

yankeesnormplot<-ggplot(yankees, aes(x=x,y=y))+
  geom_point(alpha=1, size=1.5, col = "steelblue4") + 
  scale_y_continuous(labels= scales::percent, name="Deviation from norm") +
  scale_x_continuous(limits=c(1,1000), breaks=(c(1,200,400,600,800, 1000)), name="Frequency") +
  labs(title="9th Inning Scenarios: Yankees") +
  theme(legend.position='none', title=bbi)