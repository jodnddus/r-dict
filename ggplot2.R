library(tidyverse)
mtcars1 <- as_tibble(rownames_to_column(mtcars))
ggplot(mtcars1, aes(hp, mpg, color=cyl))
ggplot(mtcars1, aes(hp, mpg, color=cyl))+geom_point()
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+geom_point()
ggplot(mtcars1)+geom_point(aes(hp, mpg, color=factor(cyl)))
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl))) +
  geom_point() +
  geom_smooth(aes(group=123), se=F)

ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )

ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  geom_text(aes(label=rowname), show.legend=F)


ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  geom_label(
    aes(label=rowname),
    nudge_x=2.5,
    nudge_y=1.5,
    label.size=0.25,
    show.legend=F
  )

hmpg <- mtcars1 %>% group_by(cyl) %>% filter(row_number(desc(mpg))==1)
hmpg
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  geom_label(
    aes(label=rowname),
    data=hmpg,
    nudge_x=2.5,
    nudge_y=1.5,
    label.size=0.25,
    show.legend=F
  )

ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  scale_x_continuous(labels=NULL)+
  scale_y_continuous(labels=NULL)+
  scale_color_discrete(labels=NULL)
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  scale_x_continuous(labels=NULL)+
  scale_y_continuous(labels=NULL)
  
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  scale_y_continuous(breaks=seq(10, 40, by=10))

x_axis <- scale_x_continuous(limits=range(mtcars1$hp))
y_axis <- scale_y_continuous(limits=range(mtcars1$mpg))
col_legend <- scale_color_discrete(limits=unique(factor(mtcars1$cyl)))

# zooming
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+geom_smooth(aes(group=123), se=FALSE)+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  coord_cartesian(xlim=c(100,250), ylim=c(10,30))

ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  theme(legend.position="top")
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  theme(legend.position="bottom")+
  guides(color=guide_legend(nrow=3, override.aes = list(size=5)))
ggplot(mtcars1, aes(hp, mpg, color=factor(cyl)))+
  geom_point()+
  labs(
    title="Relationship between Fuel efficiency and Horse power",
    x="Horse Power",
    y="Mile per Gallon",
    caption="Data Source: R",
    color="Cylinder"
  )+
  guides(color=guide_legend(nrow=3, override.aes = list(size=5)))+
  theme_bw()+
  theme(legend.position="bottom")
