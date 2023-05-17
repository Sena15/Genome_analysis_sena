#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 6:00:00
#SBATCH -J checkm_binning_evaluation
#SBATCH --mail-user sethuraman2001.ind@gmail.com
#SBATCH --mail-type=ALL

#loading modules
module purge
module load bioinfo-tools 
module load CheckM/1.0.12

#path to the directories
ref_dir1=/home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/
ref_dir2=/home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/
out_dir1=/home/sena15/genome_analysis/analyses/checkm_results/checkm_SRR4342129/
out_dir2=/home/sena15/genome_analysis/analyses/checkm_results/checkm_SRR4342133/

#echo $ref_dir1
#echo $ref_dir2
#echo $out_dir1
#echo $out_dir2

#commands
checkm lineage_wf -t 8 -x fa --reduced_tree $ref_dir1 $out_dir1
checkm lineage_wf -t 8 -x fa --reduced_tree $ref_dir2 $out_dir2
