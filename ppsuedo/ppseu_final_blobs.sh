#$ -cwd
#$ -l hostname="n13-16-256-morbo"

cd /home/pt40963/scratch/phy_genomes/ppseu

/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/ppsue_scaffolds.fasta -o contig.mappingallfinal.cas -p fb ss 200 800 -q -i bait_match_bait_match_bait_match_bait_match_bait_match_R1.fastq bait_match_bait_match_bait_match_bait_match_bait_match_R2.fastq --cpus 8 -r unpairedclosest

wait 

##################################
wait


python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/ppsue_scaffolds.fasta -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingallfinal.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingallfinal.cas.cov

wait
#######################################
export BLASTDB=/mnt/scratch/local/blast/ncbi/


blastn -task megablast -query ppsue_scaffolds.fasta -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.ppsue_scaffolds.fasta.out -num_threads 8

  ~/scratch/Downloads/blobtools-master/blobtools create -i ppsue_scaffolds.fasta  -c contig.mappingallfinal.cas.cov -t n.ppsue_scaffolds.fasta.out -o ppsue_scaffolds.fasta.blobplots
 
 mkdir final.fa.blobplots
 cp ppsue_scaffolds.fasta.blobplots.blobDB.json final.fa.blobplots/
 
 cp ppsue_scaffolds.fasta.blobplots.blobDB.json ./final.fa.blobplots/
 
 ~/scratch/Downloads/blobtools-master/blobtools view -i  ppsue_scaffolds.fasta.blobplots.blobDB.json -o final.fa.blobplots/
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i ppsue_scaffolds.fasta.blobplots.blobDB.json -o final.fa.blobplots/ 

cd final.fa.blobplots
cat *.blobDB.table.txt | grep "Streptophyta" | cut -f1 > Streptophyta.names
cat *.blobDB.table.txt | grep "Arthropoda" | cut -f1 > Arthropoda.names
cat *.blobDB.table.txt | grep "Ascomycota" | cut -f1 > Ascomycota.names
cat *.blobDB.table.txt | grep "Chordata" | cut -f1 > Chordata.names
cat *.blobDB.table.txt | grep "Nematoda" | cut -f1 > Nematoda.names
cat *.blobDB.table.txt | grep "Basidiomycota" | cut -f1 > Basidiomycota.names
cat *.blobDB.table.txt | grep "Proteobacteria" | cut -f1 > Proteobacteria.names
cat *.blobDB.table.txt | grep "Bacteria-undef" | cut -f1 > Bacteria-undef.names
cat *.blobDB.table.txt | grep "Viruses-undef" | cut -f1 > Viruses-undef.names 
cat *.blobDB.table.txt | awk '$5 < 10' | grep 'no-hit' | sort -k4 -rn | cut -f1 > low_cov_10.names
cat *.names >  bad_contigs.out

wait
cd ../

python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py ppsue_scaffolds.fasta ./final.fa.blobplots/bad_contigs.out P.seudo.v1.genome.fasta




#### 4th round

