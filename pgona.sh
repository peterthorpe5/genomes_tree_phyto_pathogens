# funannotate method
# data must be in ~/programs/funannotate . the following command binds this to the "cd" below.
# https://funannotate.readthedocs.io/en/latest/commands.html
#docker run -it --rm -v $PWD:/home/linuxbrew/data funannotate
set -e


####################################################################

cd /storage/home/users/pjt6/docker/singulairty/funannotate/pgona

###########################
# variables
genome="P.gon.genome.v1.softmasked.fasta"
threads=16

species="pgona.v1" # two words
strain="Phygonap" # ,ust put a strain
out_folder="Phygonap"
max_intron_len=5000

# Setting for the new UTF-8 terminal support in Lion
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

#cp /home/pjt6/Desktop/newton_final_masked_mito/braker_20_rounds/augustus.hints.gff3 ./
# 5) predict genes - it will know where to look for the out files form the other runs. --organism other (for non fungal)
predict="funannotate predict -i ${genome} -o ${out_folder} \
    --species  ${species} --strain ${strain} 
    --cpus ${threads} --max_intronlen ${max_intron_len} 
	--busco_db alveolata_stramenophiles 
    --optimize_augustus
    --database /storage/home/users/pjt6/docker/singulairty/funannotate/databases  
    --name PHYGONAP --ploidy 3 --SeqCenter  DUNDEE 
"
echo ${predict}  
eval ${predict}



