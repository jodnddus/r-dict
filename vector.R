vec1 <- c(1,2,3)
vec2 <- c("A","B","C")
vec3 <- c(T,F,T)
vec4 <- c(vec1,vec2)
vec5 <- c(vec1,vec3)
vec6 <- c(vec1,vec2,vec3)
mode(vec1); mode(vec2); mode(vec3); mode(vec4); mode(vec5); mode(vec6);
# ---
rep(2,3)
rep(c(4,5,6), times=2)
rep(c(4,5,6), times=c(2,1,2))
rep(c(4,5,6), each=2)
seq(from=7, to=10, by=2)
seq(3,-3,-2)
3:-3
# ---
vec7 <- c(7,9,8)
vec7 <- append(vec7,10,after=3)
vec7
vec7 <- sort(vec7)
vec7[c(1,4)]
vec7[5] <- 100
vec7

