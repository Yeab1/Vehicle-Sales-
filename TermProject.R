# Yeabsira Lemma
# AI term project
# Get the data
setwd("C:/Users/Yeab/Desktop/college/AI/Assignments/Term Project")
data <- read.csv("autos.csv")

df<-data.frame(data)
View(df)

# Data Cleaning
# Remove the "name" column because it has too many factors and is irrelevant to my predictions.
df <- df[,-2:-2]
# Remove the "dateCrawled" column because it will throw off the predictions.
df <- df[,-1:-1]

# Translations from German to English.
# thresauras of words changed.
#   Angebot   -   Offer
#   Gesuch    -   Application
#   ja        -   yes
#   nein      -   no
# A function that translates the German terms in the data to English.
translate = function(x){
  if(x == "Angebot"){
    return("offer")
  }
  else if(x == "Gesuch"){
    return("application")
  }
  else if(x == "ja"){
    return("yes")
  }
  else if(x == "nein"){
    return("no")
  }
  else if(x == "automatik"){
    return("automatic")
  }
  else if(x == "manuell"){
    return("manual")
  }
  else if(x == "gewerblich"){
    return("commercial")
  }
  else if(x == "privat"){
    return("private")
  }
  else{
    return(x)
  }
}

# Use the translate function to translate the German in to English for a better understanding of the data.
df$offerType<-lapply(df$offerType, translate)
df$gearbox<-lapply(df$gearbox, translate)
df$notRepairedDamage<-lapply(df$notRepairedDamage, translate)
df$seller<-lapply(df$seller, translate)

View(df)

# create a function that extracts the year month and day from a date column.
noHour = strsplit("hello there", " ")
yearMonthDate = function(x){
  noHour = strsplit(x, " ")
}
c = lapply("1234 789", yearMonthDate)

df$seller<-unlist(df$seller)
df$offerType<-unlist(df$offerType)
df$gearbox<-unlist(df$gearbox)
df$notRepairedDamage<-unlist(df$notRepairedDamage)
write.csv(df,"this.csv", row.names = TRUE)
View(df)

class(df$offerType)
