program="/home/ubuntu/packages/SALSA/run_pipeline.py"
assembly="$PATH_to_10X_scaffold/shasta_10X_scaffolds.fasta"
assemblyfai="$assembly.fai"
bedfile="$PATH_to_bed_files"
python2.7 $program -a $assembly -l $assemblyfai -b $bedfile -e $Enzyme -o shasta_10X-HiC_Scaffold -m yes -i 5 -p yes
