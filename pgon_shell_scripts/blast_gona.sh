#$ -cwd


cd /home/pt40963/scratch/phy_genomes/pgona

export BLASTDB=/mnt/scratch/local/blast/ncbi/

blastn -task megablast -query clc.lane1.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.lane1.out -num_threads 8 
blastn -task megablast -query clc.lane2.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.lane2.out -num_threads 8 
blastn -task megablast -query clc.lane3.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.lane3.out -num_threads 8 
blastn -task megablast -query clc.lane4.fa -db nt -outfmt '6 qseqid staxids bitscore std scomnames sscinames sblastnames sskingdoms stitle' -evalue 1e-20 -out n.clc.lane4.out -num_threads 8

