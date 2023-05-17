#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 6:00:00
#SBATCH -J prokka_evaluation
#SBATCH --mail-user sethuraman2001.ind@gmail.com
#SBATCH --mail-type=ALL


# Load modules
module load bioinfo-tools
module load prokka/1.12-12547ca

# SRR4342129
prokka --metagenome --prefix annotation_bin1 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_1 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.1.fa
prokka --metagenome --prefix annotation_bin2 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_2 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.2.fa
prokka --metagenome --prefix annotation_bin3 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_3 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.3.fa
prokka --metagenome --prefix annotation_bin4 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_4 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.4.fa
prokka --metagenome --prefix annotation_bin5 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_5 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.5.fa
prokka --metagenome --prefix annotation_bin6 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_6 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.6.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin7 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_7 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.7.fa
prokka --metagenome --prefix annotation_bin8 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_8 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.8.fa
prokka --metagenome --prefix annotation_bin9 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_9 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.9.fa
prokka --metagenome --prefix annotation_bin10 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_10 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.10.fa
prokka --metagenome --prefix annotation_bin11 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_11 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.11.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin12 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/bin_12 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342129_bins/bins.12.fa


# SRR4342133
prokka --metagenome --prefix annotation_bin1 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_1 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.1.fa
prokka --metagenome --prefix annotation_bin2 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_2 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.2.fa
prokka --metagenome --prefix annotation_bin3 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_3 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.3.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin4 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_4 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.4.fa
prokka --metagenome --prefix annotation_bin5 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_5 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.5.fa
prokka --metagenome --prefix annotation_bin6 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_6 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.6.fa
prokka --metagenome --prefix annotation_bin7 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_7 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.7.fa
prokka --metagenome --prefix annotation_bin8 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_8 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.8.fa
prokka --metagenome --prefix annotation_bin9 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_9 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.9.fa
prokka --metagenome --prefix annotation_bin10 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_10 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.10.fa
prokka --metagenome --kingdom Archaea --prefix annotation_bin11 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_11 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.11.fa
prokka --metagenome --prefix annotation_bin12 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_12 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.12.fa
prokka --metagenome --prefix annotation_bin13 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_13 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.13.fa
prokka --metagenome --prefix annotation_bin14 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_14 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.14.fa
prokka --metagenome --prefix annotation_bin15 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_15 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.15.fa
prokka --metagenome --prefix annotation_bin16 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_16 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.16.fa
prokka --metagenome --prefix annotation_bin17 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_17 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.17.fa
prokka --metagenome --prefix annotation_bin18 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_18 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.18.fa
prokka --metagenome --prefix annotation_bin19 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_19 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.19.fa
prokka --metagenome --prefix annotation_bin20 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_20 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.20.fa
prokka --metagenome --prefix annotation_bin21 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_21 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.21.fa
prokka --metagenome --prefix annotation_bin22 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_22 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.22.fa
prokka --metagenome --prefix annotation_bin23 --outdir /home/sena15/genome_analysis/analyses/prokka_results/SRR4342133_annotations/bin_23 --force /home/sena15/genome_analysis/analyses/metabat_results/SRR4342133_bins/bins.23.fa

