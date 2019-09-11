#!/bin/bash
#$ -cwd
#Abort on any error,
#set -e

#echo Running on $HOSTNAME
#echo Current PATH is $PATH
#source $HOME/.bash_profile
cd /home/pt40963/scratch/phy_genomes/gene_model_create/cinimoni
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR863/ERR863673/ERR863673_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR863/ERR863673/ERR863673_2.fastq.gz

wait

#wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/001/314/365/GCA_001314365.1_MP94-48v2/GCA_001314365.1_MP94-48v2_genomic.fna.gz
#gunzip *.fna.gz

#cat *_1* > r1.fq.gz
#cat *_2* > r2.fq.gz

#java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 4 -phred33 r1.fq.gz r2.fq.gz R1.fq.gz crap_R1_unpaired.fq.gz R2.fq.gz crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60 
wait
#mkdir star_indicies
#
## index the genome
/home/pt40963/scratch/Downloads/STAR-master/bin/Linux_x86_64_static/STAR --runMode genomeGenerate --runThreadN 4 --limitGenomeGenerateRAM 74554136874 --genomeDir ./star_indicies --genomeFastaFiles /home/pt40963/scratch/phy_genomes/gene_model_create/cinimoni/GCA_001314365.1_MP94-48v2_genomic.fna
# nned a newer star as read lengths are too long for the old version
/home/pt40963/scratch/Downloads/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir ./star_indicies/ --runThreadN 4 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --outFilterMismatchNmax 8 --outFileNamePrefix cinimoni.RNAseq --readFilesIn R1.fq.gz R2.fq.gz

wait
samtools sort -@ 4 -o sorted.bam cinimoni.RNAseqAligned.sortedByCoord.out.bam
wait
samtools index sorted.bam   
wait
bam2hints --intronsonly --in=sorted.bam --out=hints_RNAseq.gff
