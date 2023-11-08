m1 <- matrix(3:8,nrow=2)
m1
m1 <- matrix(3:8,nrow=2,ncol=2)
m1
c1 <- c(4,3,2,1)
c2 <- c(5,6,7,8)
cbind(c1,c2)
rbind(c1,c2)
dim(c1) <- c(2,2)
c1
# ---
m1 <- matrix(c(8:1),ncol=4)
m1[2,m1[1,]>5]
m2 <- m1[c(1:2),c(1:2)]
m2
m2%*%m2
solve(m2)
m2 %*% solve(m2)
apply(m1,1,mean)
apply(m1,2,mean)
