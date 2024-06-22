# Opening the file containing the counts of nucleotides in each read in table format
GM03417_nanoseq_readlength <- read.table("GM03417_nanoseq_readlength.txt")

# Overview analysis of the two sequencing runs performed on GM03417 cell lines
dim(GM03417_nanoseq_readlength)
summary(GM03417_nanoseq_readlength)
colSums(GM03417_nanoseq_readlength)

GM03417_nanoseq_readlength_trim_data <- as.data.frame(GM03417_nanoseq_readlength[GM03417_nanoseq_readlength$V1>800,])
dim(GM03417_nanoseq_readlength_trim_data)
summary(GM03417_nanoseq_readlength_trim_data)
colSums(GM03417_nanoseq_readlength_trim_data)

GM03417_nanoseq_readlength_long_data_30kb <- as.data.frame(GM03417_nanoseq_readlength[GM03417_nanoseq_readlength$V1>30000,])
dim(GM03417_nanoseq_readlength_long_data_30kb)
summary(GM03417_nanoseq_readlength_long_data_30kb)
colSums(GM03417_nanoseq_readlength_long_data_30kb)

GM03417_nanoseq_readlength_long_data_100kb <- as.data.frame(GM03417_nanoseq_readlength[GM03417_nanoseq_readlength$V1>100000,])
dim(GM03417_nanoseq_readlength_long_data_100kb)
summary(GM03417_nanoseq_readlength_long_data_100kb)
colSums(GM03417_nanoseq_readlength_long_data_100kb)




