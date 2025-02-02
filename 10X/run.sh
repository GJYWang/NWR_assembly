seq1="NWR_S174_L001_R1_001.fastq.gz"
seq1="NWR_S174_L001_R2_001.fastq.gz"
# Shasta_10X folder
scaff10x -nodes 63 -read-s1 12 -read-s2 8 -link-s1 10 -link-s2 10 -data $Ten_X_data $PATH_to_Shasta_assem/Assembly.fasta shasta_10X_scaffolds.fasta
