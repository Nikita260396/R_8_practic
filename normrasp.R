normrasp<-function(n,mean_x,sd_x,mean_e,sd_e)
{##размер выборки, среднее и дисперсия x,среднее и дисперсия e.
  set.seed(6)
  x<-rnorm(n,mean_x,sd_x)
  e<-rnorm(n,mean_e,sd_e)
  y<-c(100-12*x+e)
  x
  ##png("picture.png")##файл с графиками сохраняется
  layout(matrix(c(2,1,0,3),2,2,byrow = T))
  plot(x,y)
  boxplot(x)
  boxplot(y,horizontal = T)
  ##dev.off()
}
