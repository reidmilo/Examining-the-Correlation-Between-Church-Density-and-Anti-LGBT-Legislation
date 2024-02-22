# Church Influences on Voting Patterns 
library(dplyr)
df <- read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2 (PT 2)/2020_USRC_Group_Detail.csv')
#write.csv(df2, '/Users/oliverreidmiller/Desktop/Data 400/Idea 2 (PT 2)/aggCountyChurchData.csv')
#df <- read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2 (PT 2)/aggCountyChurchData.csv')
df<-na.omit(df)
df1 <- df %>% group_by(State.Name) %>% summarise(avgChPop = sum(Adherents.as...of.Total.Population))

billDf <- read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2 (PT 2)/anti-LGBT Legislation Data.csv')
billDf1 <- filter(billDf, Year==2023)

mergedDf <- merge(df1, billDf1, by = 'State.Name')

plot(x =mergedDf$Anti.LGBT.Bills, y= mergedDf$avgChPop)
lm<-(lm(Anti.LGBT.Bills~avgChPop, data = mergedDf))
library(jtools)
summ(lm)

library(ggplot2)
ggplot(mergedDf, aes(x =avgChPop, y= Anti.LGBT.Bills)) + 
  geom_point() +
  stat_smooth(method = "lm",se = FALSE,col = 'red')+
  ylab('Number of Anti-LGBT Bills Introduced')+xlab('Percentage of Population Attending Church')+
  labs(title = 'Correlation between Population Attending Church and Introducing Anti-LGBT Bills',
       caption = 'Y = 0.3x + 1.01, R-Squared = 0.47')
