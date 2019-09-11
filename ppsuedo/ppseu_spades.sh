#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/ppseu

#/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --careful -k 55,77,99,107,127 -t 16 -m 245 -1 /home/pt40963/scratch/phy_genomes/ppseu/bait_match_bait_match_bait_match_bait_match_R1.fastq -2 /home/pt40963/scratch/phy_genomes/ppseu/bait_match_bait_match_bait_match_bait_match_R2.fastq -o ppseu_spades_v5


/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --trusted-contigs /home/pt40963/scratch/phy_genomes/ppseu/clc.all.v5.fa -k 55,77,99,107,127 -t 16 -m 245 -1 /home/pt40963/scratch/phy_genomes/ppseu/bait_match_bait_match_bait_match_bait_match_bait_match_R1.fastq.gz -2  /home/pt40963/scratch/phy_genomes/ppseu/bait_match_bait_match_bait_match_bait_match_bait_match_R2.fastq.gz -o ppseu_spades_v5_trusted_agina


#pigz -p 14 --recursive *

