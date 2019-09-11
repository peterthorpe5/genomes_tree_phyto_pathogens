#!/bin/bash
# put out files in current directory
#$ -cwd
#$ -l hostname="n13*"
# Deliver notifications to the following address
# Send notifications when the job begins (b), ends (e), or is aborted (a)
#dollar -M email.address@somewhere .... currently doesnt work
#dollar -m a 
#Abort on any error,
#set -euo pipefail
#(and thus quit the script right away)

echo Running on $HOSTNAME
echo Current PATH is $PATH
#source ~/.bash_profile

cd /home/pt40963/scratch/pcbio/filtered_assembly/ITS_regions/spades
#export TMP=~/scratch/${USER}_${JOB_ID}

##
# THESE VARIABLE NEED TO BE FILLED IN BY USER from the species scripts


##


mkdir ${genome_prefix}
cd ${genome_prefix}

#put these variable to file for logging purposes.
echo "USER VARIABLES ARE: 
genome_prefix = ${genome_prefix}, 
read_1_link = ${read_1_link}, 
read_2_link = ${read_2_link}, 
genome_fasta = ${genome_fasta} 
genome_GFF = ${genome_GFF}
num_threads = ${num_threads}
repository_path = ${repository_path}
trimmomatic_path = ${trimmomatic_path}
"

#echo "commands to be run are:
#wget ${genome_fasta}
#wget ${read_1_link}
#wget ${read_2_link}
#makeblastdb -in ${genome_prefix}*.fa -dbtype nucl
#blastn -query ${repository_path}/Phy_ITSregions_all_20160601.fasta -db ${genome_prefix}.fa -outfmt 6 -out n.ITS_vs_${genome_prefix}.out
#python ${repository_path}/generate_ITS_GFF.py --blast n.ITS_vs_${genome_prefix}.out --prefix ${genome_prefix} -o ${genome_prefix}.ITS.GFF
#python ${repository_path}/filter_GFF.py --gff ${genome_prefix}.ITS.GFF -o ${genome_prefix}.ITS.consensus.GFF
#cat ${genome_prefix}.ITS.GFF | uniq | sort -k1,1 -k4n -k5n > temp.out
#mv temp.out ${genome_prefix}.ITS.GFF
#python3 ${HOME}/scratch/Downloads/BUSCO_v1.1b1/BUSCO_v1.1b1.py -in ${genome_prefix}.fa -l ../LINEAGE/eukaryota -o busco -m genome -f -Z 827000000 --cpu ${num_threads}
#python ${repository_path}/convert_busco_coodinates_to_GFF.py -b ./run_busco/coordinates_busco --prefix ${genome_prefix}_BUSCO_GENES.gff -o ${genome_prefix}_BUSCO_GENES.gene.gff
#cat ${genome_prefix}_BUSCO_GENES.gene.gff | uniq | sort -k1,1 -k4n -k5n > temp.out
#mv temp.out ${genome_prefix}_BUSCO_GENES.gene.gff
#java -jar ${trimmomatic_path}/trimmomatic-0.32.jar PE -threads ${num_threads} -phred33 ${SRA_prefix}_1.fastq.gz ${SRA_prefix}_2.fastq.gz R1.fq.gz unpaired_R1.fq.gz R2.fq.gz unpaired_R2.fq.gz ILLUMINACLIP:${repository_path}/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:45
#bowtie2-build --quiet -f ${genome_prefix}.fa bowtie_index_files
#bowtie2 --very-sensitive --non-deterministic --seed 1 --no-mixed --no-unal -p ${num_threads} -x bowtie_index_files -1 R1.fq.gz -2 R2.fq.gz | samtools view -@ ${num_threads} -S -b -o $TMP/tmp_unsorted.bam -
#samtools sort -@ ${num_threads} $TMP/tmp_unsorted.bam ${genome_prefix}
#python ${repository_path}/get_genes_from_GFF.py --gff ${genome_prefix}.gff3 -o ${genome_prefix}.gene.gff
#bedtools multicov -bams ${genome_prefix}.bam -bed ${genome_prefix}_BUSCO_GENES.gene.gff > ${genome_prefix}_BUSCO_GENES.gene.gff.genes.cov
#bedtools multicov -bams ${genome_prefix}.bam -bed ${genome_prefix}.gene.gff > ${genome_prefix}_genomic.genes.cov
#bedtools multicov -bams ${genome_prefix}.bam -bed ${genome_prefix}.ITS.consensus.GFF > ${genome_prefix}_genomic.ITS.cov
#cat ${genome_prefix}_genomic.genes.cov  | cut -f10 > ${genome_prefix}_genomic.genes.cov.values
#cat  ${genome_prefix}_genomic.ITS.cov | cut -f10 >  ${genome_prefix}_genomic.ITS.cov.values
#cat  ${genome_prefix}_BUSCO_GENES.gene.gff.genes.cov | cut -f10 >  ${genome_prefix}_BUSCO_GENES.gene.gff.genes.cov.values
#python ${repository_path}/summary_stats.py --ITS ${genome_prefix}_genomic.ITS.cov.values --GFF ${genome_prefix}.ITS.consensus.GFF --all_genes_cov ${genome_prefix}_genomic.genes.cov.values -o ${genome_prefix}_stats_all_genes_versus_ITS.out
#python ${repository_path}/summary_stats.py --ITS ${genome_prefix}_genomic.ITS.cov.values --GFF ${genome_prefix}.ITS.consensus.GFF --all_genes_cov ${genome_prefix}_BUSCO_GENES.gene.gff.genes.cov.values -o ${genome_prefix}_stats_BUSCO_versus_ITS.out" > ${genome_fasta}.COMMANDS.txt

#
#reads genome and GFF, gunzip 

# i get my reads from: http://www.ebi.ac.uk/ena/data/warehouse/search
# use the advance.  Species ENTER, Lib.layout=paired,  platform=illumina, lib.source=genomic > search
echo STEP1: Downloading reads and genome files
#wget ${genome_fasta}
#gunzip *.gz

# Want to have consistent extensions on all the genome FASTA files, .fa
# If we have example_silly.fna rename it to example.fa
# Real example GCA_000149735.1_ASM14973v1_genomic.fna -->
# just GCA_000149735.1_ASM14973v1.fa
#

#rename the GFF3 file
#if [ -f ${genome_prefix}*.gff3 ]; then
#    # WARNING - This assumes the wildcard will match only one file!
#	echo "Renaming ${genome_prefix}*.fna to ${genome_prefix}*.fa"
#    mv ${genome_prefix}*.gff3 ${genome_prefix}.gff3
#fi


#wget ${read_1_link}
#wget ${read_2_link}
# EXAMPLE: Phytophthora_kernoviae.GCA_000333075.1.31.dna.genome.fa.gz => Phytophthora_kernoviae.GCA_000333075.1.31.
#gunzip ${genome_prefix}*
wait

# blast to get representative ITS regions.

echo " STEP2: blast searches"
cmd="makeblastdb -in ${genome_fasta} -dbtype nucl" 
echo ${cmd}
eval ${cmd}

cmd2="blastn -query ${repository_path}/Phy_ITSregions_all_20160601.fasta -db ${genome_fasta} -outfmt 6 -out n.ITS_vs_${genome_prefix}.out" 
echo ${cmd2}
eval ${cmd2}


# prepare ITS gff. python:
echo "STEP 3: prepare ITS gff. python "
cmd_python_ITS="python ${repository_path}/generate_ITS_GFF.py --blast n.ITS_vs_${genome_prefix}.out --prefix ${genome_prefix} -o ${genome_prefix}.ITS.GFF" 
echo ${cmd_python_ITS}
eval ${cmd_python_ITS}

cat ${genome_prefix}.ITS.GFF | uniq | sort -k1,1 -k4n -k5n > temp.out
mv temp.out ${genome_prefix}.ITS.GFF

# genearate consensus blast hit ITS GFF file from the sorted file above.
wait
cmd_python_ITS_consensus="python ${repository_path}/filter_GFF.py --gff ${genome_prefix}.ITS.GFF -o ${genome_prefix}.ITS.consensus.GFF"
echo ${cmd_python_ITS_consensus}
eval ${cmd_python_ITS_consensus}

# hmm search with pre generated hmm profile for phyto ITS regions.
#most strict with least gap at the expense of good alignment
#hmmsearch --cut_ga --domtblout ${genome_prefix}.gap8000.refine.hmm.tab ${repository_path}/ITS_remove_redundancy/Phy_ITSnr100.muscle.gap8000.refine.hmm ${genome_prefix}.fa
# decent alignment and removed some gaps ...
hmmsearch --cut_ga --domtblout ${genome_prefix}.gap4000.refine.hmm.tab ${repository_path}/ITS_remove_redundancy/Phy_ITSnr100.muscle.gap4000.refine.hmm ${genome_fasta}
# similar to above but sightly more gaps
hmmsearch --cut_ga --domtblout ${genome_prefix}.gap1000.refine.hmm.tab ${repository_path}/ITS_remove_redundancy/Phy_ITSnr100.muscle.gap1000.refine.hmm ${genome_fasta}
# alignmnet with lots of gaps used to make hmm profile
#hmmbuild oufile infile
hmmsearch --cut_ga --domtblout ${genome_prefix}.Phy_ITSregions_all_20160601_nr100.fasta.aligned.refine.tab ${repository_path}/ITS_remove_redundancy/Phy_ITSregions_all_20160601_nr100.fasta.aligned.refine.hmm ${genome_fasta}

###
#for for eukaryotes - BUSCO --long removed for testing
#mkdir LINEAGE 
#ln -s /home/pt40963/scratch/Downloads/BUSCO_v1.1b1/eukaryota ./LINEAGE/
# We add the && true to supress the unix error return code from BUSCO so that the script keeps going.
# BUSCO ouputs several gig of logs to stdout and/or stderr
# We add the > /dev/null to send the stdout to /dev/null (throw it away)
# We add the 2&>1 to send stderr to stdout (which we send to dev null)
#slow busco cmd_python_BUSCO="python3 ${HOME}/scratch/Downloads/BUSCO_v1.21/BUSCO_v1.21.py -in ${genome_prefix}.fa -l ../LINEAGE/eukaryota -o busco -m genome -f -Z 827000000 --long --cpu ${num_threads}"
#cmd_python_BUSCO="python3 ${HOME}/scratch/Downloads/BUSCO_v1.21/BUSCO_v1.21.py -in ${genome_prefix}.fa -l ../LINEAGE/eukaryota -o busco -m genome -f -Z 827000000 --cpu ${num_threads} >/dev/null 2>&1 %% true"

### failed busco attempts.cmd_python_BUSCO="python3 ${HOME}/scratch/Downloads/BUSCO_v1.21/BUSCO_v1.21.py -in ${genome_prefix}.fa -l ../LINEAGE/eukaryota -o busco -m genome -f -Z 827000000 --cpu ${num_threads}"
#