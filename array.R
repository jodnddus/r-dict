a1 <- array(1:3)
mode(a1)
class(a1)
a2 <- array(11:20,dim=c(2,2,2))
a2
a2%*%a2
a2[,,1]%*%a2[,,2]
