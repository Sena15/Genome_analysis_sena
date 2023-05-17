#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 6:00:00
#SBATCH -J metaquast_analysis
#SBATCH --mail-user sethuraman2001.ind@gmail.com
#SBATCH --mail-type=ALL

# loading modules
module purge
module load bioinfo-tools 
module load quast/5.0.2

# path to the directories
ref_dir1=/home/sena15/genome_analysis/data/trimmed_data/SRR4342129_megahit_outfile/final.contigs.fa
ref_dir2=/home/sena15/genome_analysis/data/trimmed_data/SRR4342133_megahit_outfile/final.contigs.fa
out_dir1=/home/sena15/genome_analysis/analyses/metaquast_results/29/
out_dir2=/home/sena15/genome_analysis/analyses/metaquast_results/33/

#echo $ref_dir1
#echo $ref_dir2
#echo $out_dir1
#echo $out_dir2

# commands
metaquast.py $ref_dir1 -o $out_dir1 -t 8
metaquast.py $ref_dir2 -o $out_dir2 -t 8
