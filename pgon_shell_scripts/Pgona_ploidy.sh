#!/bin/bash
cd /home/pt40963/scratch/phy_genomes/pgona


#pigz -d *.gz

#bowtie2-build -f P.gon.genome.v1.fasta.masked pgona
#
#


 #pigz --decompress -p 8 *.fastq.gz
#perl /home/pt40963/scratch/Downloads/prinseq-lite-0.20.4/prinseq-lite.pl -fastq bait_match_bait_match_bait_match_bait_match_R1.fastq --fastq2 bait_match_bait_match_bait_match_bait_match_R2.fastq -phred64 -derep 1
sleep 28800
rm *good_singleton*
bowtie2 --very-sensitive -p 22 -x pgona -1 *bait_match_R1_prinseq_good_*.fastq  -2 *bait_match_R2_prinseq_good_*.fastq  -S pgona.sam
 
samtools view -@ 22 -S -b -o unsorted_masked.bam Pgona.sam

samtools sort -@ 22 unsorted_masked.bam sorted_masked

samtools index sorted_masked.bam

# ploidy analysis
# https://github.com/clwgg/nQuire
/home/pt40963/scratch/Downloads/nQuire/nQuire create -b sorted_masked.bam -o base1

/home/pt40963/scratch/Downloads/nQuire/nQuire histo base1.bin > Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire view base1.bin >> Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire denoise base1.bin -o base_denoised

/home/pt40963/scratch/Downloads/nQuire/nQuire lrdmodel base1.bin >> Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire modeltest base1.bin >> Pgon_ploidy_masked.txt


/home/pt40963/scratch/Downloads/nQuire/nQuire estmodel base1.bin >> Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire histotest base1.bin >> Pgon_ploidy_masked.txt


/home/pt40963/scratch/Downloads/nQuire/nQuire lrdmodel base_denoised.bin >> Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire modeltest base_denoised.bin >> Pgon_ploidy_masked.txt


/home/pt40963/scratch/Downloads/nQuire/nQuire estmodel base_denoised.bin >> Pgon_ploidy_masked.txt

/home/pt40963/scratch/Downloads/nQuire/nQuire histotest base_denoised.bin >> Pgon_ploidy_masked.txt

