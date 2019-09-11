#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/pgona


#/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --careful -k 33,55,77,99,107,127 -t 24 -m 230 -1 /home/pt40963/scratch/phy_genomes/pgona/bait_match_bait_match_bait_match_bait_match_R1.fastq -2 /home/pt40963/scratch/phy_genomes/pgona/bait_match_bait_match_bait_match_bait_match_R2.fastq -o gona_spades_v5


/home/pt40963/scratch/Downloads/SPAdes-3.11.0-Linux/bin/spades.py --careful --trusted-contigs /home/pt40963/scratch/phy_genomes/pgona/clc.all.v5.fa -k 33,55,77,99,107,127 -t 24 -m 230 -1 /home/pt40963/scratch/phy_genomes/pgona/bait_match_bait_match_bait_match_bait_match_R1.fastq -2 /home/pt40963/scratch/phy_genomes/pgona/bait_match_bait_match_bait_match_bait_match_R2.fastq -o gona_spades_v5_trusted


#pigz -p 14 --recursive *

