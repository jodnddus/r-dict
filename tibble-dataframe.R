tb1 <- tibble(x=1:3, y=x+1, z=3)
tb1
tb1+2
tb2 <- tribble(~x, ~y, ~z,
  + 4, "a", T,
  + 5, "b", F,
  + 6, "c", T,
)
tb2
mpg
print(mpg, n=5, width=Inf)
mpg1 <- as.data.frame(mpg)
cars1 <- as_tibble(cars)
mtcars1 <- as_tibble(rownames_to_column(mtcars))
# tibble methods
filter(mtcars1, mpg<25, cyl %in% c(4,6), am==0)
filter(mtcars1, mpg>=quantile(mpg,0.25) & mpg<=quantile(mpg,0.75))
arrange(filter(mtcars1, mpg>=quantile(mpg,0.25) & mpg<=quantile(mpg,0.75)), mpg)
arrange(mtcars1, mpg)
arrange(mtcars1, cyl, desc(wt))
select(mtcars1, rowname, cyl:wt)
select(mtcars1, -rowname)
groupmtcars1 <- group_by(mtcars1, am)
groupmtcars2 <- group_by(mtcars1, gear, cyl)
groupmtcars3 <- group_by(mtcars1, am, cyl)
summarize(mtcars1, n=n(), mean_of_mpg=mean(mpg))
summarize(groupmtcars1, n=n(), mean_of_mpg=mean(mpg))
summarize(groupmtcars2, n=n(), mean_of_mpg=mean(mpg))
summarize(groupmtcars3, n=n(), mean_of_mpg=mean(mpg))
mtcars1$mpg %>% mean
mtcars1$mpg %>% sample(5)
