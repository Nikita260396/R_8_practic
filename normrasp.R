normrasp<-function(n,mean_x,sd_x,mean_e,sd_e)
{## n - размер выборки, mean_x,sd_x - среднее и дисперсия x,mean_e,sd_e - среднее и дисперсия e.
set.seed(6)
x<-rnorm(300,12,2)
e<-rnorm(300,0,15)
y<-c(100-12*x+e)
x
##png("picture.png")##файл с графиками сохраняется
layout(matrix(c(2,1,1,2,1,1,0,3,3),3,3, byrow = T))
plot(x,y)
boxplot(x)
boxplot(y,horizontal = T)
##dev.off()
}
