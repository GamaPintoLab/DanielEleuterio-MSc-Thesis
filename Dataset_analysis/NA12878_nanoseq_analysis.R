# Opening the file containing the counts of nucleotides in each read in table format
NA12878_nanoseq_readlength <- read.table("NA12878_nanoseq_readlength.txt")

# Overview analysis of the NA12878 sequencing dataset
dim(NA12878_nanoseq_readlength)
summary(NA12878_nanoseq_readlength)
colSums(NA12878_nanoseq_readlength)

NA12878_nanoseq_readlength_trim_data <- as.data.frame(NA12878_nanoseq_readlength[NA12878_nanoseq_readlength$V1>800,])
dim(NA12878_nanoseq_readlength_trim_data)
summary(NA12878_nanoseq_readlength_trim_data)
colSums(NA12878_nanoseq_readlength_trim_data)

NA12878_nanoseq_readlength_long_data_30kb <- as.data.frame(NA12878_nanoseq_readlength[NA12878_nanoseq_readlength$V1>30000,])
dim(NA12878_nanoseq_readlength_long_data_30kb)
summary(NA12878_nanoseq_readlength_long_data_30kb)
colSums(NA12878_nanoseq_readlength_long_data_30kb)

NA12878_nanoseq_readlength_long_data_100kb <- as.data.frame(NA12878_nanoseq_readlength[NA12878_nanoseq_readlength$V1>100000,])
dim(NA12878_nanoseq_readlength_long_data_100kb)
summary(NA12878_nanoseq_readlength_long_data_100kb)
colSums(NA12878_nanoseq_readlength_long_data_100kb)

