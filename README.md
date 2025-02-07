# Computational Pipeline for Genome Assembly of Northern White Rhino

## Overview

This is a computational pipeline designed to chromosomal-level genome assembly of Northern White Rhino. It leverages several powerful tools and libraries to offer an efficient and reliable workflow for generating a high-quality reference genome using different sequencing techniques.

## Dependencies

This pipeline utilizes several external GitHub packages. Ensure these are installed to get started:

- [Shasta](https://github.com/chanzuckerberg/shasta): Shasta is an efficient assembler for long-reads. It is quite easy to install. However, you might need to give it root privilege to achieve maximum performance.
In our paper, Shasta 0.5.1 was used to generate the contigs from the ONT reads using parameters --memoryMode filesystem --memoryBacking 2M –threads 128 for optimal performance.

- [Scaff10X](https://github.com/wtsi-hpag/Scaff10X): Scaff10X is a package that scaffolds contigs using 10X linked reads. We followed the installation guideline in the github repository.
One round of scaffolding was performed with the parameters -nodes 63 -read-s1 12 -read-s2 8 -link-s1 10 -link-s2 10

- [Arima Genomics mapping pipeline & SALSA2](https://github.com/ArimaGenomics/mapping_pipeline, https://github.com/marbl/SALSA): The scaffolds are further scaffolded by HiC data.
In order to run Arima Genomics mapping pipeline & SALSA2, BWA-MEM and Picard Tools need to be installed.
We conducted 5 rounds of scaffolding to achieve optimal performance.

- [Racon & ](https://github.com/isovic/racon, https://github.com/broadinstitute/pilon): Racon and Pilon are used to polish the scaffolds using short-reads
Racon was performed with default parameters.
Pilon was performed with parameter java -Xmx512G.

- [Juicebox](https://github.com/aidenlab/Juicebox): Juicebox is a visualization tool for analyzing Hi-C data, allowing users to edit and improve genome assemblies.
We recommend this blog for quick start with Juicebox: https://bioinformaticsworkbook.org/dataAnalysis/GenomeAssembly/Hybrid/Juicer_Juicebox_3dDNA_pipeline.html#gsc.tab=0

## Installation and Running

In general, the most difficult part of running this pipeline is the installation. However, installing and running the packages can depend on the specific system or cluster. We used the Mariux System held at Max Planck Institute for Molecular Genetics and followed the installation guidelines from each package. No error or problem was encountered.


# Parameters used to run these packages can be found in:
https://www.biorxiv.org/content/10.1101/2021.12.11.472206v1

## Contact

Questions about the paper can be sent to correspondence authors: 

Franz-Josef Müller: fjmuellr@molgen.mpg.de

Marisa L. Korody: MKorody@sdzwa.org

Jeanne F. Loring: jloring@scripps.edu


## Citation

Chromosome-level genome assembly of the functionally extinct northern white rhinoceros (Ceratotherium simum cottoni). Gaojianyong Wang, Björn Brändl, Christian Rohrandt, Karl Hong, Andy Pang, Joyce Lee, Harris A. Lewin, Giovanna Migliorelli, Mario Stanke, Remy Schwab, Sarah Ford, Iris Pollmann, Bernhard M. Schuldt, Marlys Houck, Oliver A. Ryder, Alexander Meissner, Jeanne F. Loring, Franz-Josef Müller, Marisa L. Korody
bioRxiv 2021.12.11.472206; doi: https://doi.org/10.1101/2021.12.11.472206
