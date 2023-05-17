#!/bin/bash -l

#SBATCH -A uppmax2023-2-3
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 8
#SBATCH -t 6:00:00
#SBATCH -J HT_seq_29
#SBATCH --mail-user sethuraman2001.ind@gmail.com
#SBATCH --mail-type=ALL

# Load modules
module load bioinfo-tools
module load htseq/0.9.1

# Your commands
bam_file_dir=/home/sena15/genome_analysis/analyses/bwa_alignment/29/
gff_file_dir=/home/sena15/genome_analysis/analyses/prokka_results/SRR4342129_annotations/
output=/home/sena15/genome_analysis/analyses/HTseq_results/29/

mkdir -p /home/sena15/genome_analysis/analyses/read_counts

for n in 7 12
do
        htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_37_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/annotation_bin${n}.gff) > ${output}/${n}_37.out
        htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_39_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/annotation_bin${n}.gff) > ${output}/${n}_39.out
done

for n in 1 2 3 4 5 6 8 9 10 11 
do
        htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_37_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/annotation_bin${n}.gff) > ${output}/${n}_37.out
        htseq-count -f bam -r pos -t CDS -i ID --stranded=no ${bam_file_dir}/${n}_map_39_sorted.bam <(sed '/##FASTA/,$d' ${gff_file_dir}/bin_${n}/annotation_bin${n}.gff) > ${output}/${n}_39.out
done
