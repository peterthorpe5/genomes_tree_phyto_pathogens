#!/bin/bash

cd /home/pt40963/nematode/longi




#java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 4 -phred33 /mnt/shared/projects/201402_Longidorus_nematode/raw_data/Sample_Read1.fastq.gz /mnt/shared/projects/201402_Longidorus_nematode/raw_data/Sample_Read2.fastq.gz Longi_R1_paired.fq.gz Longi_R1_unpaired.fq.gz Longi_R2_paired.fq.gz Longi_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36  

#gunzip *.gz

bowtie-build -f lel_RNAseq_ass.fa lel_RNAseq_ass.fa_hits_index

/mnt/apps/bowtie2/bowtie2-2.0.5/bowtie2-build -f coo2_genome_contig_hits.fasta coo2_2_genome_contig_hits_index

bowtie -S -p 4 lel_RNAseq_ass.fa_hits_index -1 /home/pt40963/nematode/longi/Longi_R1_paired.fq -2 /home/pt40963/nematode/longi/Longi_R2_paired.fq /home/pt40963/nematode/longi/Longi_mapped.sam

#/mnt/apps/tophat/2.0.11/tophat coo2_2_genome_contig_hits_index /home/pt40963/coo2/Mp_O_coo2_mirabait_R1.fastq.fastq /home/pt40963/coo2/Mp_O_coo2_mirabait_R2.fastq.fastq

samtools view -S -b -o unsorted.bam Longi_mapped.sam

samtools sort unsorted.bam Longi_unsorted

samtools index Longi_mapped_accepted_hits.bam

