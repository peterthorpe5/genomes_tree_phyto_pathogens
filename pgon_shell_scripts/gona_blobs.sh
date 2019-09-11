#$ -cwd
#$ -l hostname="n13-16-256-morbo"


cd /home/pt40963/scratch/phy_genomes/pgona
#mv R1.fq R1.fastq
#mv R2.fq R2.fastq

#/home/pt40963/Downloads/.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered2.fasta -p bait_match_R1.fastq bait_match_R2.fastq


#######################################################################################################

/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.all.fa.contim_filtered5.fasta -o contig.mappingall_final.cas -p fb ss 200 800 -q -i bait_match_bait_match_bait_match_bait_match_R1.fastq bait_match_bait_match_bait_match_bait_match_R2.fastq --cpus 12 -r unpairedclosest


wait 

##################################
wait

python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.all.fa.contim_filtered5.fasta -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mappingall_final.cas -o contig.mappingall_final.cas.cov

ait
######################################
export BLASTDB=/mnt/scratch/local/blast/ncbi/

blastn -task megablast -query clc.all.fa.contim_filtered5.fasta -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.allfinal.out -num_threads 14

  ~/scratch/Downloads/blobtools-master/blobtools create -i clc.all.fa.contim_filtered5.fasta  -c contig.mappingall_final.cas.cov -t n.clc.allfinal.out -o clc.all.fa.contim_filtered5.fasta.blobplots
 
 mkdir allfinal.fa.blobplots
 cp clc.all.fa.contim_filtered5.fasta.blobplots.blobDB.json ./allfinal.fa.blobplots
 
 ~/scratch/Downloads/blobtools-master/blobtools view -i  clc.all.fa.contim_filtered5.fasta.blobplots.blobDB.json -o allfinal.fa.blobplots/
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i clc.all.fa.contim_filtered5.fasta.blobplots.blobDB.json -o allfinal.fa.blobplots/ 

cd allfinal.fa.blobplots
cat *.blobDB.table.txt | grep "Streptophyta" | cut -f1 > Streptophyta.names
cat *.blobDB.table.txt | grep "Arthropoda" | cut -f1 > Arthropoda.names
cat *.blobDB.table.txt | grep "Ascomycota" | cut -f1 > Ascomycota.names
cat *.blobDB.table.txt | grep "Chordata" | cut -f1 > Chordata.names
cat *.blobDB.table.txt | grep "Nematoda" | cut -f1 > Nematoda.names
cat *.blobDB.table.txt | grep "Basidiomycota" | cut -f1 > Basidiomycota.names
cat *.blobDB.table.txt | grep "Proteobacteria" | cut -f1 > Proteobacteria.names
cat *.blobDB.table.txt | grep "Bacteria-undef" | cut -f1 > Bacteria-undef.names
cat *.blobDB.table.txt | grep "Viruses-undef" | cut -f1 > Viruses-undef.names
cat *.blobDB.table.txt | grep "Cnidaria" | cut -f1 > Cnidaria.names
cat *.blobDB.table.txt | grep "Actinobacteria" | cut -f1 > Actinobacteria.names
cat *.blobDB.table.txt | grep "Mucoromycota" | cut -f1 > Mucoromycota.names
cat *.blobDB.table.txt | grep "Euryarchaeota" | cut -f1 > Euryarchaeota.names 
cat *.blobDB.table.txt | awk '$5 < 10' | grep 'no-hit' | sort -k4 -rn | cut -f1 > low_cov_10.names
cat *.names >  bad_contigs.out

cd ../

python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py clc.all.fa.contim_filtered5.fasta ./allfinal.fa.blobplots/bad_contigs.out clc.all.fa.contim_filtered_final.fasta

