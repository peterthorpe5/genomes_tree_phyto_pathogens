cd /home/pt40963/scratch/phy_genomes/palni
#python run_pipeline.py

/home/pt40963/Downloads/build_dictionary.pl --rm ./Palni.v1.genome.fasta.preFriSep291756332017.RMoutput/ --fuzzy > Palni.v1.fuzzy.txt
 
/home/pt40963/Downloads/OneCodeToFindThemAll.pl --dir /home/pt40963/scratch/phy_genomes/palni/Palni.v1.genome.fasta.preFriSep291756332017.RMoutput --rm /home/pt40963/scratch/phy_genomes/palni/Palni.v1.genome.fasta.preFriSep291756332017.RMoutput/Palni.v1.genome.fasta.out --ltr Palni.v1.fuzzy.txt --fasta 

python run_pipeline.py