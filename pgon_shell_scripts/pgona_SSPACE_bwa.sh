#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/pgona

#  read were deduplicated using:

 #perl /home/pt40963/scratch/Downloads/prinseq-lite-0.20.4/prinseq-lite.pl -fastq bait_match_bait_match_bait_match_bait_match_R1.fastq --fastq2 bait_match_bait_match_bait_match_bait_match_R2.fastq -phred64 -derep 1


#perl /mnt/apps/SSPACE-PREMIUM-2.3_linux-x86_64/SSPACE_Premium_v2.3.pl -l /home/pt40963/scratch/phy_genomes/pgona/shell_scripts/libraries_bwa.txt -s /home/pt40963/scratch/phy_genomes/pgona/clc.all.v5.fa -v 1 -k 5 -a 0.7 -x 0 -m 32 -o 20 -T 8 -z 200 -b Pgon_bwa_CLC_extension_with_filtering
 
#
perl /mnt/apps/SSPACE-PREMIUM-2.3_linux-x86_64/SSPACE_Premium_v2.3.pl -l /home/pt40963/scratch/phy_genomes/pgona/shell_scripts/libraries_bwa.txt -s /home/pt40963/scratch/phy_genomes/pgona/Pgon_bwa_SPADES2_extension_with_filtering3/Pgon_bwa_SPADES2_extension_with_filtering3.final.scaffolds.fasta -v 1 -k 5 -a 0.7 -x 0 -m 32 -o 20 -T 4 -z 200 -b Pgon_bwa_SPADES2_extension_with_filtering4