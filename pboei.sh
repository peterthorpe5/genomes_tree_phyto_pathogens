# funannotate method
# data must be in ~/programs/funannotate . the following command binds this to the "cd" below.
# https://funannotate.readthedocs.io/en/latest/commands.html
#docker run -it --rm -v $PWD:/home/linuxbrew/data funannotate
set -e


####################################################################

cd /storage/home/users/pjt6/docker/singulairty/funannotate/palni

###########################
# variables
genome="Palni.v1.genome.softmasked.fasta"
threads=8

species="Palni.v1" # two words
strain="Phyalni" # ,ust put a strain
out_folder="Phyalni"
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
    --name PHYALNI --ploidy 4 --SeqCenter  DUNDEE 
"
echo ${predict}  
eval ${predict}



