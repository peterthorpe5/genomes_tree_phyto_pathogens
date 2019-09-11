#$ -cwd
#$ -l hostname="n13-16-256-morbo"
#/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b /home/pt40963/R.padi_genome/reads/bad_contigs_v4.fasta -p /home/pt40963/R.padi_genome/reads/v_3/Rp_Q15_R1_paired.fastq /home/pt40963/R.padi_genome/reads/v_3/Rp_Q15_R2_paired.fastq


cd /home/pt40963/scratch/phy_genomes/pgona
#mv R1.fq R1.fastq
#mv R2.fq R2.fastq

/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered2.fasta -p bait_match_R1.fastq bait_match_R2.fastq


#######################################################################################################



#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.lane2.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L002_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L002_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.lane3.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L003_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L003_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.lane4.fa -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L004_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L004_R2_001.fastq.gz
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o clc.all.fa -p fb ss 200 800 -q -i R1.fq R2.fq
#/mnt/shared/bio_software/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 8 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.all.fa -p fb ss 200 800 -q -i R1.fq R2.fq
/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_assembler --cpus 10 -m 240 -w 64 -b 77 -v -o /home/pt40963/scratch/phy_genomes/pgona/clc.all.v3.fa -p fb ss 200 800 -q -i bait_match_bait_match_R1.fastq bait_match_bait_match_R2.fastq

wait

#clc_mapper -d Rp.clc.v5_q15_20150921.fa -o contig.mapping1.cas -p fb ss 200 800 -q -i /home/pt40963/R.padi_genome/reads/v_3/bait_miss_Rp_Q15_R1_paired.fastq /home/pt40963/R.padi_genome/reads/v_3/bait_miss_Rp_Q15_R2_paired.fastq --cpus 8 -r unpairedclosest

#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -o contig.mapping1.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L001_R2_001.fastq.gz --cpus 8 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -o contig.mapping2.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L002_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L002_R2_001.fastq.gz --cpus 8 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -o contig.mapping3.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L003_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L003_R2_001.fastq.gz --cpus 8 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -o contig.mapping4.cas -p fb ss 200 800 -q -i /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L004_R1_001.fastq.gz /mnt/shared/projects/Phytophthora/201708_SteveWhissonGenomes/static/RawData/2017_08_24_Pgonapoyides-55449458/2017-08-24-Pgonapoyides_S3_L004_R2_001.fastq.gz --cpus 8 -r unpairedclosest
#/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d clc.all.fa -o contig.mappingall.cas -p fb ss 200 800 -q -i R1.fq R2.fq
/mnt/apps/clcBio/clc-assembly-cell-4.1.0-linux_64/clc_mapper -d /home/pt40963/scratch/phy_genomes/pgona/clc.all.v3.fa -o contig.mappingall3.cas -p fb ss 200 800 -q -i bait_match_bait_match_R1.fastq bait_match_bait_match_R2.fastq --cpus 10 -r unpairedclosest


wait 

##################################
wait
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.lane1.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mapping1.cas -o /home/pt40963/scratch/phy_genomes/pgona/contig.mapping1.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.lane2.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mapping2.cas -o /home/pt40963/scratch/phy_genomes/pgona/contig.mapping2.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.lane3.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mapping3.cas -o /home/pt40963/scratch/phy_genomes/pgona/contig.mapping3.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.lane4.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mapping4.cas -o /home/pt40963/scratch/phy_genomes/pgona/contig.mapping4.cas.cov
#python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.all.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mappingall.cas -o /home/pt40963/scratch/phy_genomes/pgona/contig.mappingall.cas.cov

python ~/Downloads/blobtools-light-master/mapping2cov.py -a /home/pt40963/scratch/phy_genomes/pgona/clc.all.v3.fa -cas /home/pt40963/scratch/phy_genomes/pgona/contig.mappingall3.cas -o contig.mappingall3.cas.cov

wait
#######################################
export BLASTDB=/mnt/scratch/local/blast/ncbi/

blastn -task megablast -query clc.all.v3.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.all3.out -num_threads 12

  ~/scratch/Downloads/blobtools-master/blobtools create -i clc.all.v3.fa  -c contig.mappingall3.cas.cov -t n.clc.all3.out -o clc.all.v3.fa.blobplots
 
 mkdir all3.fa.blobplots
 cp clc.all.v3.fa.blobplots.blobDB.json ./all3.fa.blobplots
 
 ~/scratch/Downloads/blobtools-master/blobtools view -i  clc.all.v3.fa.blobplots.blobDB.json -o all3.fa.blobplots/
 
~/scratch/Downloads/blobtools-master/blobtools blobplot -i clc.all.v3.fa.blobplots.blobDB.json -o all3.fa.blobplots/ 

cd all3.fa.blobplots
cat *.blobDB.table.txt | grep "Streptophyta" | cut -f1 > Streptophyta.names
cat *.blobDB.table.txt | grep "Arthropoda" | cut -f1 > Arthropoda.names
cat *.blobDB.table.txt | grep "Ascomycota" | cut -f1 > Ascomycota.names
cat *.blobDB.table.txt | grep "Chordata" | cut -f1 > Chordata.names
cat *.blobDB.table.txt | grep "Nematoda" | cut -f1 > Nematoda.names
cat *.blobDB.table.txt | grep "Basidiomycota" | cut -f1 > Basidiomycota.names
cat *.blobDB.table.txt | awk '$5 < 10' | grep 'no-hit' | sort -k4 -rn | cut -f1 > low_cov_10.names
cat *.names >  bad_contigs.out

cd ../

python ~/misc_python/get_sequences_i_want_from_fasta_command_line_not_wanted_file.py clc.all.v3.fa ./all3.fa.blobplots/bad_contigs.out clc.all.fa.contim_filtered3.fasta

/home/pt40963/Downloads/mira_4.9.5_2_linux-gnu_x86_64_static/bin/mirabait -I -k 99 -b clc.all.fa.contim_filtered3.fasta -p bait_match_bait_match_R1.fastq bait_match_bait_match_R2.fastq
 