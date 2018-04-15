library(ggplot2)
# titanic is avaliable in your workspace
# 1 - Check the structure of titanic
#library(titanic)

data("Titanic")
df <- as.data.frame(Titanic)

str(df)

# 2 - Use ggplot() for the first instruction
ggplot(df, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge")

# 3 - Plot 2, add facet_grid() layer
p <- ggplot(df, aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge")+facet_grid(.~ Survived)

print(p)

# 4 - Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# 5 - Plot 3, but use the position object from instruction 4

P2<- ggplot(df, aes(x = Class, color = Sex, y = Age)) +
  geom_point(size = 3, alpha = 0.5,position = posn.jd)+facet_grid(.~ Survived)

print(P2)
