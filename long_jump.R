df <- read.csv('long_jump_data.csv')
View(df)
data_plot <- plot(df$X100_M_PR, df$Long_Jump_PR, xlab = '100 Meter PR', ylab='Long Jump PR')
model <- lm(df$Long_Jump_PR~df$X100_M_PR)
abline(model)
summary(model)

PR100M <- df$X100_M_PR
PRLJ <- df$Long_Jump_PR
Division <- df$Division

predict(model, new_data=my_distances, interval='confidence')
library(ggplot2)
ggplot(data_plot, aes(x=PR100M, y=PRLJ))+
         geom_point(aes(col=Division))+
         geom_smooth(method='lm')+
         xlab("100 Meter PR")+
         ylab("Long Jump PR")
model
hist(PR100M, main="Histogram of 100 Meter PR", xlab='100 Meter PR')
hist(PRLJ, main="Histogram of Long Jump PR", xlab='Long Jump PR')
summary(PR100M)
median(PR100M)
hist(PRLJ)
