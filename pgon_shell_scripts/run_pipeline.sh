cd /home/pt40963/scratch/phy_genomes/pgona/

python run_rm.py

/home/pt40963/Downloads/build_dictionary.pl --rm ./P.gon.genome.v1.fasta.preMonOct161349002017.RMoutput/ --fuzzy > Pgona.v1.fuzzy.txt
 
/home/pt40963/Downloads/OneCodeToFindThemAll.pl --dir /home/pt40963/scratch/phy_genomes/pgona/P.gon.genome.v1.fasta.preMonOct161349002017.RMoutput --rm /home/pt40963/scratch/phy_genomes/pgona/P.gon.genome.v1.fasta.preMonOct161349002017.RMoutput/P.gon.genome.v1.fasta.out --ltr Pgona.v1.fuzzy.txt --fasta 

python run_pipeline.py
