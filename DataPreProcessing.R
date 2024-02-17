##DATA 400 DATA PREPROCESSING
library(dplyr)
setwd('/Users/oliverreidmiller/Desktop/Data 400/Idea 2')

# Current Code ------------------------------------------------------------

churchData <- read.csv ('/Users/oliverreidmiller/Desktop/Data 400/Idea 2/All_Places_Of_Worship.csv')
popData<- read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2/uszips.csv')

df <- merge(x=churchData,y=popData, 
             by.x=c("ZIP"), 
             by.y=c("zip"),
             all.x=TRUE)

empty <- sum(is.na(df$population))
total <- nrow(df)

df <- df[,c('ZIP','NAME','AFFILIATION','CITY','population','STATE','X','Y','SUBREGION')]

df_noNA <- df[!is.na(df$population),]

df2<- df[is.na(df$population),]
df2 <- df2[,-5]
 
popData$city <- toupper(popData$city)


df2 <- merge(x=df2,y=popData, 
            by.x=c("CITY","STATE"), 
            by.y=c("city","state_id"),
            all.x=TRUE)

df2 <- df2[,c('ZIP','NAME','AFFILIATION','CITY','population','STATE','X','Y','SUBREGION')]

df3 = rbind(df_noNA,df2)

empty <- sum(is.na(df3$population))
total <- nrow(df3)

df3<-df3[!is.na(df3$population),]

#write.csv(df3, "/Users/oliverreidmiller/Desktop/Data 400/Idea 2/ChurchPopMerged.csv", row.names=FALSE)

df4 <- df3 %>%group_by(ZIP) %>% count(ZIP)

df4 <- merge(x=df4,y=df3,by = 'ZIP',all.x=TRUE)

df4 <- mutate (df4, churchPopRatio = population/n)

write.csv(df4, "/Users/oliverreidmiller/Desktop/Data 400/Idea 2/ChurchPopRatio.csv", row.names=FALSE)


mutate(churchPopRat = count(ZIP)/population)


df5<-df4[!(df4$population==0),]


write.csv(df4, "/Users/oliverreidmiller/Desktop/Data 400/Idea 2/ChurchPopRatioNOZERO.csv", row.names=FALSE)


# State Level -------------------------------------------------------------
library(dplyr)
churchStateData <-read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2/All_Places_Of_Worship.csv')
popStateData<- read.csv('/Users/oliverreidmiller/Desktop/Data 400/Idea 2/STATEPOP.csv')


df_Church_S_1<- churchStateData[,c('STATE','NAME','AFFILIATION')]
df_Church_S_1 <- filter (df_Church_S_1, STATE != 'AP')

df_Pop_S_1 <- popStateData[,c('REGION','X2023')]

df_Church_S_2 <- df_Church_S_1 %>% group_by(STATE)%>% summarise (StateTotal = n())


df_S_Merged <- merge(x=df_Church_S_2,y=df_Pop_S_1, 
             by.x=c("STATE"), 
             by.y=c("REGION"),
             all.x=TRUE)
df_S_Merged <- mutate (df_S_Merged, Ratio = X2023/StateTotal)
write.csv(df_S_Merged, "/Users/oliverreidmiller/Desktop/Data 400/Idea 2/StateLevelData.csv", row.names=FALSE)

