![ogfsc](https://user-images.githubusercontent.com/17633478/171782071-4dc9756e-accb-4cc4-aaed-ac6c48ea34d8.png)


# OGFSC v2.0 to perform supervised and unsupervised gene filtering

1. install the OGFSC R package: OGFSC_0.2.3.tar.gz
2. unzip the demo file: Odom B6.zip
3. run the script: run_OGFSC_demo.R
                                       
General parameters:                                                                            
data - scRNA-seq data with genes vs cells                                  
nBins - number of bins to construct MLM model                                       
minBinSize - minimum bin size                                       
LR_p - the p-value cutoff for valid linear model identification                                      
alpha - candidate gene filtering curves                                                                    
plot_option - option to plot results                                                                        

Parameters of unsupervised OGFSC：                                                             
TW_threshold - p-value cutoff for valid principle component identification                                 
                                     
Parameters of supervised OGFSC：                                                             
paral_option - option to perform parallel computation                                     
CV - the fold number of cross validation                                 
maxPLScomp - the maximum number of maximum PLS components                                       
paralSize - the number of cores for parallel computation                                     
scalingMethod - scalling method options, 'mc' and/or 'pa'                                 
sampelLabels - the cell category a priori information. If provided, perform supervised OGFSC, otherwise, unsupervised OGFSC                             
                                      
