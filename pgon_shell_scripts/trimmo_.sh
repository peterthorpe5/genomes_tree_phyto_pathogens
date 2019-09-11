#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/pgona

#cat /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/*R1_001.fastq.gz > r1.fq.gz
#cat /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/*R2_001.fastq.gz > r2.fq.gz

java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 8 -phred33 r1.fq.gz r2.fq.gz R1.fq crap_R1_unpaired.fq.gz R2.fq crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60  

