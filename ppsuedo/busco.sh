#!/bin/bash
#$ -cwd
#Abort on any error,
#set -e
cd /home/pt40963/scratch/p_rubi/genome

#mkdir LINEAGE
#ln -s ${HOME}/scratch/Downloads/BUSCO_v1.1b1/eukaryota ./LINEAGE/eukaryota
cmd_python_BUSCO="python3 ${HOME}/scratch/Downloads/BUSCO_v1.1b1/BUSCO_v1.1b1.py 
-in /home/pt40963/scratch/p_rubi/genome/prubii_q20l50_w23.fasta
-l ./LINEAGE/eukaryota --species Phytophthora_infestans_RNAseq_train20170321
-o busco -m genome -f -Z 827000000 
--long --cpu 4"
echo ${cmd_python_BUSCO}
eval ${cmd_python_BUSCO}
wait
