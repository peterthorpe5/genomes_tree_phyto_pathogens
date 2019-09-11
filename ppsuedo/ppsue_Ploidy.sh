#!/bin/bash
cd /home/pt40963/scratch/phy_genomes/ppseu

#pigz -d *.gz

#bowtie2-build -f P.seudo.v1.genome.fasta.masked ppseu
#perl /home/pt40963/scratch/Downloads/prinseq-lite-0.20.4/prinseq-lite.pl -fastq bait_match_bait_match_bait_match_bait_match_bait_match_R1.fastq --fastq2 bait_match_bait_match_bait_match_bait_match_bait_match_R2.fastq -phred64 -derep 1

bowtie2 --very-sensitive -p 22 -x ppseu -1 *bait_match_R1_prinseq_good_*.fastq -2 *bait_match_R2_prinseq_good_*.fastq -S ppseu.sam


samtools view -@ 22 -S -b -o unsorted_Masked.bam ppseu.sam

samtools sort -@ 22 unsorted_Masked.bam sorted_Masked

samtools index sorted_Masked.bam

# ploidy analysis
# https://github.com/clwgg/nQuire
/home/pt40963/scratch/Downloads/nQuire/nQuire create -b sorted_Masked.bam -o base

/home/pt40963/scratch/Downloads/nQuire/nQuire histo base.bin > ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire view base.bin >> ppseu.histogrammasked.ploidy 

/home/pt40963/scratch/Downloads/nQuire/nQuire denoise base.bin -o base_denoised

/home/pt40963/scratch/Downloads/nQuire/nQuire lrdmodel base.bin >> ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire modeltest base.bin >> ppseu.histogrammasked.ploidy


/home/pt40963/scratch/Downloads/nQuire/nQuire estmodel base.bin >> ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire histotest base.bin >> ppseu.histogrammasked.ploidy

echo "###############base_denoised.bin #############" >> ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire lrdmodel base_denoised.bin >> ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire modeltest base_denoised.bin >> ppseu.histogrammasked.ploidy


/home/pt40963/scratch/Downloads/nQuire/nQuire estmodel base_denoised.bin >> ppseu.histogrammasked.ploidy

/home/pt40963/scratch/Downloads/nQuire/nQuire histotest base_denoised.bin >> ppseu.histogrammasked.ploidy

