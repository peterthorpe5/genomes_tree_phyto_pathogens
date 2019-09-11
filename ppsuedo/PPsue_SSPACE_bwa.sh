#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/ppseu


#  read were deduplicated using:

 #perl /home/pt40963/scratch/Downloads/prinseq-lite-0.20.4/prinseq-lite.pl -fastq bait_match_bait_match_bait_match_bait_match_R1.fastq --fastq2 bait_match_bait_match_bait_match_bait_match_R2.fastq -phred64 -derep 1

# pigz --decompress -p 8 *.fastq.gz
 
# perl /home/pt40963/scratch/Downloads/prinseq-lite-0.20.4/prinseq-lite.pl -fastq bait_match_bait_match_bait_match_bait_match_bait_match_R1.fastq --fastq2 bait_match_bait_match_bait_match_bait_match_bait_match_R2.fastq -phred64 -derep 1

 
perl /mnt/apps/SSPACE-PREMIUM-2.3_linux-x86_64/SSPACE_Premium_v2.3.pl -l /home/pt40963/scratch/phy_genomes/ppseu/shell_scripts/libraries_bwa.txt -s /home/pt40963/scratch/phy_genomes/ppseu/Ppseu_bwa_SPADES_extension_with_filtering_round_2/Ppseu_bwa_SPADES_extension_with_filtering_round_2.final.scaffolds.fasta -v 1 -k 5 -a 0.7 -x 0 -m 32 -o 20 -T 8 -z 200 -b Ppseu_bwa_SPADES_extension_with_filtering_round_3

# pigz -p 8 *.fastq