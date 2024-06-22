# Opening the file containing the counts of nucleotides in each read in table format
CHM13_nanoseq_readlength <- read.table("CHM13_nanoseq_readlength.txt")

# Overview analysis of the CHM13 sequencing dataset
dim(CHM13_nanoseq_readlength)
summary(CHM13_nanoseq_readlength)
colSums(CHM13_nanoseq_readlength)

CHM13_nanoseq_readlength_trim_data <- as.data.frame(CHM13_nanoseq_readlength[CHM13_nanoseq_readlength$V1>800,])
dim(CHM13_nanoseq_readlength_trim_data)
summary(CHM13_nanoseq_readlength_trim_data)
colSums(CHM13_nanoseq_readlength_trim_data)

CHM13_nanoseq_readlength_long_data_30kb <- as.data.frame(CHM13_nanoseq_readlength[CHM13_nanoseq_readlength$V1>30000,])
dim(CHM13_nanoseq_readlength_long_data_30kb)
summary(CHM13_nanoseq_readlength_long_data_30kb)
colSums(CHM13_nanoseq_readlength_long_data_30kb)

CHM13_nanoseq_readlength_long_data_100kb <- as.data.frame(CHM13_nanoseq_readlength[CHM13_nanoseq_readlength$V1>100000,])
dim(CHM13_nanoseq_readlength_long_data_100kb)
summary(CHM13_nanoseq_readlength_long_data_100kb)
colSums(CHM13_nanoseq_readlength_long_data_100kb)




