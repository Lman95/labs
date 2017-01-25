#Welcome to Lab 3, please answer the following questions

#Install and require package MASS
#install.packages("MASS")
library(MASS)
library(dplyr)

#Using the built in dataset anorexia, aggregate the data to look at:
#       1. the number of patients who received a treatment (choose one) who responded positively to treatment
#       2. the number of patients who recieved a treatment who either did not respond or responded negatively to treatment
#       3. the number of patients who were in the control group who responded positively to treatment
#       4. the number of patients who were in the control group who did not respond or responded negatively to treatment

ano <- data.frame(anorexia)

positive.cbt <- filter(ano, Treat == "CBT") %>% filter(Postwt > Prewt)
nrow(positive.cbt)

negative.cbt <- filter(ano, Treat == "CBT") %>% filter(Postwt < Prewt)
nrow(negative.cbt)

positive.cont <- filter(ano, Treat == "Cont") %>% filter(Postwt > Prewt)
nrow(positive.cont)

negative.cont <- filter(ano, Treat == "Cont") %>% filter(Postwt < Prewt)
nrow(negative.cont)

#summary <- group_by(ano, Treat) %>% 
#           summarise(av.prewt = mean(Prewt), av.postwt = mean(Postwt), number = n())

#Such that you end up with a 2 by 2 table


#What kind of analysis appropriate to perform on a study like this?
# Risk ratio

#Perform the appropriate choice on the dataset
cbt.ratio <- nrow(negative.cbt) / nrow(filter(ano, Treat == "CBT"))
  
cont.ratio <- nrow(negative.cont) / nrow(filter(ano, Treat == "Cont"))

risk.ratio <- cbt.ratio/cont.ratio

#What does your result tell you?





#Write a function that allows you to perform your analysis based on what kind of treatment you want 
#that returns the appropriate calculation





#Which treatment worked better?





