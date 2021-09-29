
library(ggplot2)

statistics <- read.csv("D:/Big data/DATA.csv")

str(statistics)

ggplot(data = statistics, aes(x = type1, y = value1, fill = type1)) + 
  geom_bar(stat = "identity") +
  xlab('類型') +
  ylab('熱門貼文數') +
  scale_fill_brewer(palette = 'Set3')+
  geom_text(mapping = aes(label = sprintf("%d",value1)),
            size = 4, colour = 'black', position = position_stack())


library(ggplot2)

df <- data.frame(gender =c("Female", "Male"),perc=c(800, 395))

ggplot(data = df) +
  geom_bar(aes(x=factor(1),y=perc,fill=gender),stat = "identity")+
  ylab('count') +
  xlab('') +
  scale_fill_brewer(palette = 'Pastel1') + 
  coord_polar(theta = 'y')

pie
