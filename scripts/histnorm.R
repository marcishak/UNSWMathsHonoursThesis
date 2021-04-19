# histnorm.R
# Takes 1000s draws of a normal distribution and plots it's histogram

# draw samples
vec <- rnorm(1000)

# plot histogram
hist(vec)
