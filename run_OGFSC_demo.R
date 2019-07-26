warnDef<-options("warn")$warn
warnRead<-options(warn = -1)

# setwd("G:/algorithms/sOGFSC/R package")

#install.packages("tsne")
#install.packages("RColorBrewer")

library(OGFSC)

## load data and pre-processing
raw = read.table('Odom B6.txt',sep = "\t")
data = raw[2:dim(raw)[1], 2:dim(raw)[2]] 

sampelLabels = raw[1, 2:dim(raw)[2]]
geneList = matrix(raw[2:dim(raw)[1], 1])
 
# parameter list
# data = data
# nBins = 60
# minBinSize = 100
# LR_p = 0.01
# alpha = c(0.5, 0.6, 0.7, 0.8, 0.9, 0.99, 0.999, 0.9999)
# TW_threshold = 0.0001
# plot_option = 0
# paral_option = 1 
# CV = 10
# maxPLScomp = 30
# paralSize = 4
# scalingMethod = c('mc', 'pa')
# sampelLabels = sampelLabels



## supervised OGFSC

sOGF = OGFSC(data, sampelLabels = sampelLabels, nBins = 60, paral_option = 1, plot_option = 1)
sOGFSC_idx = sOGF$OGFSC_idx

## unupervised OGFSC
OGF = OGFSC(data, plot_option = 1) 
OGFSC_idx = OGF$OGFSC_idx 

