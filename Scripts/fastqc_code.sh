#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J fastqc_analysis
#SBATCH --mail-user sethuraman2001.ind@gmail.com
#SBATCH --mail-type=ALL

# Load modules
module load bioinfo-tools
module load FastQC/0.11.8

# Your commands
fastqc -f fastq -t 2 -o /home/sena15/genome_analysis/data/raw_data/RNA_trimmed_fastqc /home/sena15/genome_analysis/data/trimmed_data/RNA_trimmed/*.fastq.gz
