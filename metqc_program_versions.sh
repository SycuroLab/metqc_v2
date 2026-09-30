
#!/usr/bin/bash

# Load the ~/.bashrc file as source.
source ~/.bashrc

## FastQC v0.11.8

# Activate the fastqc conda environment.
conda activate fastqc_env
echo "fastqc"
fastqc -v

echo -e ""

## MultiQC v1.35

# Activate the multiqc conda environment.
conda activate multiqc_env
echo "multiqc"
multiqc -v 2>&1 | grep "This is MultiQC" | sed 's/^ \+//g' | sed 's/This is //g'

echo -e ""

## PRINSEQ-lite 0.20.4

# Activate the prinseq conda environment.
conda activate prinseq_env
echo "prinseq-lite.pl"
prinseq-lite.pl -version

echo -e ""

# bmtagger (v3.101) version 1.1.0

# Activate the bmtagger conda environment.
conda activate bmtagger_env
echo "bmtagger.sh"
bmtagger.sh -V 2>&1 | grep "version"

echo -e ""

## BBTools version 40.02

# Activate the bbmap conda environment.
conda activate bbmap_env

# bbduk.sh BBTools version 40.02
echo "bbduk.sh"
bbduk.sh --version 2>&1 | grep "BBTools version"

echo -e ""

# polyfilter.sh BBTools version 40.02
echo "polyfilter.sh"
polyfilter.sh --version 2>&1 | grep "BBTools version"

echo -e ""

## Python 3.14.7

# Activate the python conda environment.
conda activate python_3_14_env
echo "python"
python --version

echo -e ""

## seqkit v2.14.0

# Activate the seqkit conda environment.
conda activate seqkit_env
echo "seqkit"
seqkit version

echo -e ""


