### This analysis was performed to assess the read count and length.

# This allowed extraction of the length from each read and write it in a column for data analysis through R.

bioawk -c fastx '{ print length($seq) }' seqdata_file.fasta > read_length_count_in_column.txt
