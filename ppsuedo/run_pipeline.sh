cd /home/pt40963/scratch/phy_genomes/ppseu

#python run_rm.py

/home/pt40963/Downloads/build_dictionary.pl --rm ./P.seudo.v1.genome.fasta.preMonOct161353092017.RMoutput/ --fuzzy > ppseu.v1.fuzzy.txt
 
/home/pt40963/Downloads/OneCodeToFindThemAll.pl --dir /home/pt40963/scratch/phy_genomes/ppseu/P.seudo.v1.genome.fasta.preMonOct161353092017.RMoutput --rm /home/pt40963/scratch/phy_genomes/ppseu/P.seudo.v1.genome.fasta.preMonOct161353092017.RMoutput/P.seudo.v1.genome.fasta.out --ltr ppseu.v1.fuzzy.txt --fasta 

python run_pipeline.py
