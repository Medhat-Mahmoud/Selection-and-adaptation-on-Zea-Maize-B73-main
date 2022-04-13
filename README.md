# Selection-and-adaptation-onZea-Maize-B73

This repository houses code and data (private sources) to identify selection on genes that controlling Zea Maize ssp. mays var. B73 traits. In this repository, we have divided files into subdirectories as outlined below. For analyses performed using GWDG Scientific Compute Cluster, we have deposited both bash files and outputs.

## *Function:* R function to estimate G-hat from allele frequency and effect size data.
* ***ld.R:*** R function to estimate the optimal number of independent genome segments.



## *R-codes:* Code to analyze maize data
* ***ld-code.R:*** Code to calculate LD decay in maize data.

* ***Allele_Freq-code.R:*** Code to calculate allele frequencies changes between two populations based “N” label.

* ***Allele_Freq_Age-code.R:*** Code to calculate allele frequencies changes between two populations based on the age of each cultivar.

* ***rrBLUP-code.R:*** Code to estimate allelic substitutional effects in maize data.

* ***Ghat-code.R:*** Code to estimate Ghat in maize data.

* ***Plotting-code.R:*** Code to plot Ghat results.

## Data
* ***phe.RData:*** Gene expression data in maize.

* ***map.RData:*** The position of ~700k SNPs in maize.

* ***SNP.RData:*** The Genotype of ~700k SNPs data in maize (PRIVATE).

* ***gene_loc.RData:*** Gene location (start and end) of ~23k genes in maize.

* ***pca.RData:*** The PCA of the ~700k SNPs in maize.

* ***clas.RData:*** classification of the ~300 cultivars of maize.

## Bash_script:
* ***Bash files for analysis the whole genome data using GWDG Scientific Compute Cluster.***

## N_Results:
* ***The results of running Ghat on two populations based on “N” labelling.***

## Age_Results:
* ***The results of running Ghat on two populations based on the age of each cultivar.***

## Changes_in_allele_frequencies.PDF:
* The Changes in allele frequencies (A) between the two populations based on “N” labelling; (B) Between the two populations based on the age of each cultivar.

## RSULTS.PDF: 
* Plot of Ghat results, Ghat correlations on x-axis and Ghat p-value on y-axis. (A) Is the result based on “N” labelling; (B) Is the results based on the age of each cultivar.
