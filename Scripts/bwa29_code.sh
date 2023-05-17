#!/bin/bash -l

#SBATCH -A uppmax2023-2-8
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 10:00:00
#SBATCH -J BWA_Mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user sethuraman2001.ind@gmail.com

# Load modules
module load bioinfo-tools
module load bwa
module load samtools/1.9

# Commands
input1=/home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/
input2=/home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/

mkdir -p /home/sena15/genome_analysis/analyses/bwa_alignment/29 

for n in 1 2 3 4 5 6 7 8 9 10 11 12
do
  bwa index /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_${n}/annotation_bin${n}.fna
  bwa mem -t 2 /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_${n}/annotation_bin${n}.fna /home/sena15/genome_analysis/data/raw_data/SRR4342137.1.fastq.gz /home/sena15/genome_analysis/data/raw_data/SRR4342137.2.fastq.gz > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.sam
  samtools view -S -b /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.sam > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.bam
  samtools sort /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.bam > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37_sorted.bam
  rm /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.sam
  rm /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_37.bam
done

for n in 1 2 3 4 5 6 7 8 9 10 11 12
do
  bwa index /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_${n}/annotation_bin${n}.fna
  bwa mem -t 2 /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_${n}/annotation_bin${n}.fna /home/sena15/genome_analysis/data/raw_data/SRR4342139.1.fastq.gz /home/sena15/genome_analysis/data/raw_data/SRR4342139.2.fastq.gz > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.sam
  samtools view -S -b /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.sam > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.bam
  samtools sort /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.bam > /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39_sorted.bam
  rm /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.sam
  rm /home/sena15/genome_analysis/analyses/bwa_alignment/29/${n}_map_39.bam

done

