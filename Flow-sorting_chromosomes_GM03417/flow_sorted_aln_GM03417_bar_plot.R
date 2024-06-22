# Open table
file <- read.table(file = "flow_sorted_aln_minimap2_hg38_pass_count_corr.txt", fill = TRUE)
df <- na.omit(file)

# Bar-Plot
sum(df$V1)
library(ggplot2)

ggplot2::ggplot(df, aes(x = factor(V2), y= V1)) +
  geom_bar(stat = "identity") +
  labs(x="Chromosome", y="Reads Aligned") +
  theme_bw() + 
  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank()) +
  theme(aspect.ratio = 1,
        axis.title.x = element_text(size=10),
        axis.title.y = element_text(size=10),
        axis.text.x = element_text(size=8),
        axis.text.y = element_text(size=8),
        axis.ticks.x = element_blank(),
        axis.ticks.length.y=unit(-0.10, "cm"))+
  scale_y_continuous(limit = c(0,47), expand = c(0,0))
  
# Saving the Figure in desired directory:
# Replace "location" with the directory to save figure.
setwd("location")
ggsave("flow_sorted_aln_barplot.png", width = 500, height = 500, dpi = 200, units = "px")
