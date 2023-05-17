#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 05:00:00
#SBATCH -J Phylogeny_33
#SBATCH --mail-type=ALL
#SBATCH --mail-user sethuraman2001.ind@gmail.com
source ~/.bashrc

# load modules
module load bioinfo-tools
module load conda
export CONDA_ENVS_PATH=/home/sena15/envs/

source activate phylophlan

# Create variables
outdir=/home/sena15/genome_analysis/analyses/phylogeny/
configs=/home/sena15/envs/configs/
annotation=/home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/

# Create directories
mkdir -p $outdir/input/metagenome33

# Symlinks input data files
for bin in $annotation/*;
do
  ln -sf ${bin}/*.faa $outdir/input/metagenome33/
done

cd $outdir

phylophlan -i input/metagenome33 -d phylophlan --diversity high -f $configs/supermatrix_aa.cfg
