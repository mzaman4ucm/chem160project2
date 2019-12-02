ndims<-30
Average<-c()
dimensions<-c()
for (i in 1:ndims) {
	dimensions<-c(dimensions, i)
	dists<-c()
      for (j in 1:10000) {
   		P1<-runif(i)
   		P2<-runif(i)
   		dist<-sqrt(sum((P1-P2)^2))
   		dists<-c(dists, dist)
		mean<- mean(dists)
		}
	Average<-c(Average, mean)
	}
plot(dimensions, Average, xlab= "Number of Dimensions", ylab= "Average Distance",pch=16, col=2)


