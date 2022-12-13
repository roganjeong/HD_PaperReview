# HDoutliers Algorithm 
install.packages('HDoutliers', dependencies = TRUE)
library(HDoutliers)

train = read.csv('train_reduced.csv')[,-1]
train_y = train$target
train = train[,-1]

train_original = train
train = dataTrans(train)

preclustered = getHDmembers(train)
results = getHDoutliers(train, preclustered)
results

# Stray Algorithm 
install.packages('stray', dependencies = TRUE)
library(stray)
require(ggplot2)
library(HDoutliers)

train = read.csv('train_reduced.csv')[,-1]
train_y = train$target
train = train[,-1]

train_original = train
train = dataTrans(train)

outliers <- find_HDoutliers(train, knnsearchtype = "brute")
outliers