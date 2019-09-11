#!/bin/bash
#$ -cwd
#Abort on any error,
#set -e

#echo Running on $HOSTNAME
#echo Current PATH is $PATH
#source $HOME/.bash_profile
cd /home/pt40963/scratch/phy_genomes/gene_model_create/parasitica
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800385/SRR800385_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800385/SRR800385_2.fastq.gz
#
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800395/SRR800395_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800395/SRR800395_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800397/SRR800397_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800397/SRR800397_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800399/SRR800399_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800399/SRR800399_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800402/SRR800402_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800402/SRR800402_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800387/SRR800387_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800387/SRR800387_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800389/SRR800389_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800389/SRR800389_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800391/SRR800391_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800391/SRR800391_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800392/SRR800392_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800392/SRR800392_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800396/SRR800396_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800396/SRR800396_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800385/SRR800385_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800385/SRR800385_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800395/SRR800395_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800395/SRR800395_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800397/SRR800397_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800397/SRR800397_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800399/SRR800399_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800399/SRR800399_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800402/SRR800402_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800402/SRR800402_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800388/SRR800388_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800388/SRR800388_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800390/SRR800390_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800390/SRR800390_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800394/SRR800394_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800394/SRR800394_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800400/SRR800400_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800400/SRR800400_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800403/SRR800403_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800403/SRR800403_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR582/002/SRR5825992/SRR5825992_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR582/002/SRR5825992/SRR5825992_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800386/SRR800386_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800386/SRR800386_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800393/SRR800393_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800393/SRR800393_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800398/SRR800398_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800398/SRR800398_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800401/SRR800401_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800401/SRR800401_2.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800404/SRR800404_1.fastq.gz
#wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR800/SRR800404/SRR800404_2.fastq.gz
#
#wait
#
#wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/247/585/GCF_000247585.1_PP_INRA-310_V2/GCF_000247585.1_PP_INRA-310_V2_genomic.fna.gz
#gunzip *.fna.gz
#
#cat *_1* > r1.fq.gz
#cat *_2* > r2.fq.gz
#
#java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 4 -phred33 r1.fq.gz r2.fq.gz R1.fq.gz crap_R1_unpaired.fq.gz R2.fq.gz crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60 
#wait
#rm crap*
#rm *_1.fastq.gz
#rm *_2.fastq.gz
#
mkdir star_indicies
#
## index the genome
/home/pt40963/scratch/Downloads/STAR-master/bin/Linux_x86_64_static/STAR --runMode genomeGenerate --runThreadN 12 --limitGenomeGenerateRAM 74554136874 --genomeDir ./star_indicies --genomeFastaFiles /home/pt40963/scratch/phy_genomes/gene_model_create/parasitica/GCF_000247585.1_PP_INRA-310_V2_genomic.fna
# nned a newer star as read lengths are too long for the old version
/home/pt40963/scratch/Downloads/STAR-master/bin/Linux_x86_64_static/STAR --genomeDir ./star_indicies/ --limitBAMsortRAM 29832080185 --runThreadN 12 --outSAMtype BAM SortedByCoordinate --readFilesCommand zcat --outFilterMismatchNmax 4 --outFileNamePrefix parasitica.RNAseq --readFilesIn R1.fq.gz R2.fq.gz

wait
samtools sort -@ 8 -o sorted.bam parasitica.RNAseqAligned.sortedByCoord.out.bam
wait
samtools index sorted.bam   
wait
bam2hints --intronsonly --in=sorted.bam --out=hints_RNAseq.gff
