# OGFSC v2.0

1. install the OGFSC R package: OGFSC_0.2.3.tar.gz
2. unzip the demo file: Odom B6.zip
3. run the script: run_OGFSC_demo.R

Input parameters and the default values
data - scRNA-seq data with genes vs cells
nBins - number of bins to construct MLM model
minBinSize - minimum bin size
LR_p - the p-value cutoff for valid linear model identification
alpha - candidate gene filtering curves
TW_threshold - p-value cutoff for valid principle component identification (for unsupervised OGFSC only)
plot_option - option to plot results
paral_option - option to perform parallel computation (for supervised OGFSC only)
CV = 10
maxPLScomp = 30
paralSize = 4
scalingMethod = c('mc', 'pa')
sampelLabels = sampelLabels
