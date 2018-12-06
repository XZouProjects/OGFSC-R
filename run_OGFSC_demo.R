
setwd("G:/algorithms/OGFSC/OGFSC_R")
rm(list=ls())

library(OGFSC)
#install.packages("tsne")
#install.packages("RColorBrewer")


## load data and pre-processing
#raw = read.table('GSE59739_DataTable_R.csv',sep = ",")
#data = raw[3:dim(raw)[1], 2:dim(raw)[2]] 
#pickingSession = raw[1, 2:dim(raw)[2]]  
#cell_IDs = raw[2, 2:dim(raw)[2]] 
#geneList = matrix(raw[3:dim(raw)[1], 1])
#cell_type_unique = c('NF1','NF2','NF3', 'NF4','NF5','NP1', 'NP2', 'NP3', 'PEP1', 'PEP2', 'TH')
#cell_types = rep(0, dim(cell_IDs)[2]) 
#for (i in 1:length(cell_type_unique))
#{
#idx1 = which(cell_IDs == cell_type_unique[i])  
#cell_types[idx1] = i 
#}
#idx = which(cell_types!=0) 
#cell_types = cell_types[idx]
#data = (data[,idx])
#data = as.matrix(data)
#data = apply(data,2,as.numeric)

# # removing batch effect
#pickingSession = pickingSession[idx]
#pickingSession_uni = sort(unique(t(pickingSession)))
#pickingSe = rep(0, dim(pickingSession)[2]) 
#for (i in 1:length(pickingSession_uni))
#{
#idx = which(pickingSession == pickingSession_uni[i])
#pickingSe[idx] = i 
#}
#
#sigma2 = apply(data,1,var) 
#colnames(data) <- as.matrix(cell_IDs)
#rownames(data) <- geneList
#data <- avereps(data,ID=rownames(data))
#write.table(data, "Usoskin.xls",sep="\t", row.names = TRUE, col.names = TRUE)


data <- read.table("Usoskin.xls", sep="\t", header=TRUE)
data <- as.matrix(data)
## log transform
log2Data <- log2(data +1) 
## gene filtering by OGFSC
OGF <- OGFSC(log2Data, plot_option = 1, nBins = 60, minBinSize=100, LR_p=0.01,
            alpha=c(0.5, 0.6, 0.7, 0.8, 0.9, 0.99, 0.999, 0.9999), TW_threshold=0.0001) 
###
OGFSC_idx <- OGF$OGFSC_idx 
idx_output <- OGF$idx_output
cv2_threshold <- OGF$cv2_threshold 
