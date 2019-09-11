#$ -pe smp 8
#$ -cwd
#$ -l hostname="n13-16-256-morbo"
#/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b /home/pt40963/R.padi_genome/reads/bad_contigs_v4.fasta -p /home/pt40963/R.padi_genome/reads/v_3/Rp_Q15_R1_paired.fastq /home/pt40963/R.padi_genome/reads/v_3/Rp_Q15_R2_paired.fastq


cd /home/pt40963/scratch/phy_genomes/ppseu

#/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered.fasta -p bait_match_R1.fastq bait_match_R2.fastq


#/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered.fasta -p R1.fastq R2.fastq
 
 
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R2_001.fastq.gz

#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L001_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L001_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L002_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L002_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L003_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L003_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L004_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L004_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o clc.all.fa -p fb ss 200 800 -q -i R1.fq R2.fq

#/mnt/shared/bio_software/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 6 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.all.fa -p fb ss 200 800 -q -i R1.fq R2.fq
/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 4 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/ppseu/clc.all.v5.fa -p fb ss 200 800 -q -i bait_match_bait_match_bait_match_bait_match_R1.fastq bait_match_bait_match_bait_match_bait_match_R2.fastq

wait

#clc_mapper -d Rp.clc.v5_q15_20150921.fa -o contig.mapping1.cas -p fb ss 200 800 -q -i /home/pt40963/R.padi_genome/reads/v_3/bait_miss_Rp_Q15_R1_paired.fastq /home/pt40963/R.padi_genome/reads/v_3/bait_miss_Rp_Q15_R2_paired.fastq --cpus 6 -r unpairedclosest

#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -o contig.mapping1.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L001_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L001_R2_001.fastq.gz --cpus 6 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -o contig.mapping2.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L002_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L002_R2_001.fastq.gz --cpus 6 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -o contig.mapping3.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L003_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L003_R2_001.fastq.gz --cpus 6 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -o contig.mapping4.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L004_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Ppseudosyringae-55454423/2017-08-24-Ppseudosyringae_S1_L004_R2_001.fastq.gz --cpus 6 -r unpairedclosest

#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.all.fa -o contig.mappingall.cas -p fb ss 200 800 -q -i R1.fq R2.fq


/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/ppseu/clc.all.v5.fa -o contig.mappingall5.cas -p fb ss 200 800 -q -i bait_match_bait_match_bait_match_bait_match_R1.fastq bait_match_bait_match_bait_match_bait_match_R2.fastq --cpus 4 -r unpairedclosest


wait 

##################################
wait
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.lane1.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingl.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mapping1.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.lane2.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingl.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mapping2.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.lane3.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingl.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mapping3.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.lane4.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingl.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mapping4.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.all.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingall.cas -o /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingall.cas.cov

python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/ppseu/clc.all.v5.fa -cas /home/pt40963/scratch/phy_genomes/ppseu/contig.mappingall5.cas -o contig.mappingall5.cas.cov


wait
#######################################
export BLASTDB=/mnt/scratch/local/blast/ncbi/

blastn -task megablast -query clc.all.v5.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.all5.out -num_threads 4

  ~/scratch/Downloads/blobtools-master/blobtools create -i clc.all.v5.fa  -c contig.mappingall5.cas.cov -t n.clc.all5.out -o clc.all.v5.fa.blobplots
 
 mkdir all5.fa.blobplots
 cp clc.all.v5.fa.blobplots.blobDB.json ./all5.fa.blobplots/
 
 ~/scratch/Downloads/blobtools-master/blobtools view -i  clc.all.v5.fa.blobplots.blobDB.json -o all5.fa.blobplots/
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i clc.all.v5.fa.blobplots.blobDB.json -o all5.fa.blobplots/ 

cd all5.fa.blobplots
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

python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py clc.all.v5.fa ./all5.fa.blobplots/bad_contigs.out clc.all.fa.contim_filtered5.fasta
 


/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered5.fasta -p bait_match_bait_match_bait_match_bait_match_R1.fastq bait_match_bait_match_bait_match_bait_match_R2.fastq
 