#!/bin/bash
#$ -cwd
#Abort on any error,
#set -e



###########################################################################
# diamond blast aginst NR?
cd /home/pt40963/scratch/p_rubi/genome
# for Phytophthora
T_30_4=403677
species_tx_id=129364
tax_filter_out=4783
#  Stramenopiles - heterokonts
tax_filter_up_to=33634
threads=12
fasta=prubii_q20l50_w23.fasta


export BLASTDB=/mnt/scratch/local/blast/ncbi/

blastn -task megablast -query ${fasta} -db nt -culling_limit 5 -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.prubi.vs.nt.1e25.20seqs.cul1.out -num_threads 6

#
##mc blast
#
#
#diamond blastx -k 25 -p 8 --sensitive -v -c1 -q ${fasta} -d /home/pt40963/Downloads/uni_ref/uniref90.0.79.dmnd -a DIAMOND.diamond
#wait
#
#cat /home/pt40963/Downloads/uni_ref/uniref100.taxlist <(diamond view -a *.daa) | perl -ne 'chomp; if (/^UniRef100_(.*?)\t(\d+)$/) {$uniref2taxid {$1} = $2; next;} if (/^\S+\tUniRef90_(\S+)/) {@F = split /\t/; if (exists $uniref2taxid {$1}) { print join("\t", $F[0],$uniref2taxid {$1}, $F[11]) ."\n";}} ' > prelim.diamond.uniref90.domblast
#
#

 ~/scratch/Downloads/blobtools-master/blobtools create -i ${fasta}  -c ${fasta}.contigs.cov -t aa.fasta_vs_nr_tax.tab -o ${fasta}.blobplots
 
 
~/scratch/Downloads/blobtools-master/blobtools view -i  ${fasta}.blobplots.blobDB.json -o blobplots/
 
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i ${fasta}.blobplots.blobDB.json -o blobplots/ 


cat ${fasta}.blobplots.blobDB.table.txt | grep "Streptophyta" | cut -f1 > Streptophyta.names
cat ${fasta}.blobplots.blobDB.table.txt | grep "Arthropoda" | cut -f1 > Arthropoda.names
cat ${fasta}.blobplots.blobDB.table.txt | grep "Ascomycota" | cut -f1 > Ascomycota.names
cat ${fasta}.blobplots.blobDB.table.txt | grep "Chordata" | cut -f1 > Chordata.names
cat ${fasta}.blobplots.blobDB.table.txt | grep "Nematoda" | cut -f1 > Nematoda.names
cat ${fasta}.blobplots.blobDB.table.txt | grep "Basidiomycota" | cut -f1 > Basidiomycota.names
cat *.names >  bad_contigs.out

# 32 contigs removed.

 python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py ${fasta}.fasta bad_contigs.out ${fasta}.contim_filtered.fasta
 
 
