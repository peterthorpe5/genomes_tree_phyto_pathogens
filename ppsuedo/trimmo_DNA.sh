#!/bin/bash

cd /home/pt40963/scratch/p_rubi/DNAseq


java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 6 -phred33 Prubi_S1_L001_R1_001.fastq.gz Prubi_S1_L001_R2_001.fastq.gz R1.fq crap_R1_unpaired.fq.gz R2.fq crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60  

