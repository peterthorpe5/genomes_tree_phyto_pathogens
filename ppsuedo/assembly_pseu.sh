#!/bin/bash

cd /home/pt40963/scratch/phy_genomes/ppseu

cat /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/*R1_001.fastq.gz > r1.fq.gz
cat /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/*R2_001.fastq.gz > r2.fq.gz
wait
java -jar /home/pt40963/Downloads/Trimmomatic-0.32/trimmomatic-0.32.jar PE -threads 24 -phred33 r1.fq.gz r2.fq.gz R1.fq crap_R1_unpaired.fq.gz R2.fq crap_R2_unpaired.fq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:60  
wait
python3 ~/misc_python/NGS/fastq_to_sam.py R1.fq R2.fq | samtools view -S -b - > reads.bam

#gzip *.fq
wait
/mnt/apps/discovar/discovar_denovo/150826/bin/DiscovarDeNovo NUM_THREADS=24 READS=/home/pt40963/scratch/phy_genomes/ppseu/reads.bam OUT_DIR=/home/pt40963/scratch/phy_genomes/ppseu/ppseu_discovar/
wait

export BLASTDB=/mnt/scratch/local/blast/ncbi/

fasta=/home/pt40963/scratch/phy_genomes/ppseu/ppseu_discovar/a.final/a.lines.fasta

cd /home/pt40963/scratch/phy_genomes/ppseu/ppseu_discovar/a.final/

perl ~/misc_python/perl_misc/scaffold_stats.pl -f a.lines.fasta -k -o a.lines.fasta.stats > a.lines.fasta.out.txt

blastn -task megablast -query a.lines.fasta -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.ppseu.vs.nt.1e25.out -num_threads 24

#
##mc blast
#
#
#diamond blastx -k 25 -p 8 --sensitive -v -c1 -q a.lines.fasta -d /home/pt40963/Downloads/uni_ref/uniref90.0.79.dmnd -a DIAMOND.diamond
#wait
#
#cat /home/pt40963/Downloads/uni_ref/uniref100.taxlist <(diamond view -a *.daa) | perl -ne 'chomp; if (/^UniRef100_(.*?)\t(\d+)$/) {$uniref2taxid {$1} = $2; next;} if (/^\S+\tUniRef90_(\S+)/) {@F = split /\t/; if (exists $uniref2taxid {$1}) { print join("\t", $F[0],$uniref2taxid {$1}, $F[11]) ."\n";}} ' > prelim.diamond.uniref90.domblast
#
#



   ##
  
   ~/scratch/Downloads/blobtools-master/blobtools create -i clc.lane1.fa -c contig.mapping1.cas.cov -t n.clc.lan1.out -o clc.lane1.fa.blobplots

   
 ~/scratch/Downloads/blobtools-master/blobtools create -i clc.all.fa  -c contig.mappingall.cas.cov -t n.clc.lanall.out -o clc.all.fa.blobplots
 
 mkdir all.fa.blobplots
 
 ~/scratch/Downloads/blobtools-master/blobtools view -i  clc.all.fa.blobplots.blobDB.json -o all.fa.blobplots/
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i clc.all.fa.blobplots.blobDB.json -o all.fa.blobplots/ 


cat *.blobDB.table.txt | grep "Streptophyta" | cut -f1 > Streptophyta.names
cat *.blobDB.table.txt | grep "Arthropoda" | cut -f1 > Arthropoda.names
cat *.blobDB.table.txt | grep "Ascomycota" | cut -f1 > Ascomycota.names
cat *.blobDB.table.txt | grep "Chordata" | cut -f1 > Chordata.names
cat *.blobDB.table.txt | grep "Nematoda" | cut -f1 > Nematoda.names
cat *.blobDB.table.txt | grep "Basidiomycota" | cut -f1 > Basidiomycota.names
cat *.blobDB.table.txt | awk '$5 < 10' | grep 'no-hit' | sort -k4 -rn | cut -f1 > low_cov_10.names
cat *.names >  bad_contigs.out

# 32 contigs removed.

 python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py clc.all.fa ./all.fa.blobplots/bad_contigs.out clc.all.fa.contim_filtered.fasta
 
mv R1.fq R1.fastq
mv R2.fq R2.fastq

/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered.fasta -p R1.fastq R2.fastq

 
