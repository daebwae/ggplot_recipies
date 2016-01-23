library("ggplot2")

###                 
### Begin: change lines 
### 

# generate test data: replace with your data
set.seed(42)
x <- rnorm(7500, mean=4, sd = 4)
y <- rnorm(7500, mean=1, sd = 3)
data <- data.frame(x=x, y=y)


# range: which values do you want to display? 
x.min <- floor(min(x))
x.max <- ceiling(max(x))

y.min <- floor(min(y))
y.max <- ceiling(max(y))

# naming the scales 
x.name <- 'x axis'
y.name <- 'y axis'

# steps for the ticks (limits) on the scales 
x.steps <- 1 
y.steps <- 1


# color
color = "steelblue1"

###                 
### End: change lines 
### 




# generate limits 
x.breaks <- seq(from = x.min, to = x.max, by = x.steps)
y.breaks <- seq(from = y.min, to = y.max, by = y.steps)

# basic scatterplot 
ggplot(data, aes(x = x, y = y)) + 
  geom_point(colour = color) + 
  scale_x_continuous(breaks = x.breaks,
                     limits = c(x.min, x.max),
                     name   = x.name) + 
  scale_y_continuous(breaks = y.breaks,
                     limits = c(y.min, y.max),
                     name   = y.name) 
  
