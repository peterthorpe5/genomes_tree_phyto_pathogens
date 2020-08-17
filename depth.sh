cd /storage/home/users/pjt6/phy/bams

#     Palni.v1.genome.softmasked.fasta    

conda activate python27
python /shelf/apps/pjt6/apps/blobtools-light-master/mapping2cov.py -a /storage/home/users/pjt6/phy/bams/P.seudo.v1.genome.softmasked.fasta -bam ppsue.bam -o ppsue.cov

python /shelf/apps/pjt6/apps/blobtools-light-master/mapping2cov.py -a  /storage/home/users/pjt6/phy/bams/P.gon.genome.v1.softmasked.fasta -bam pgona.bam -o pgona.cov

python /shelf/apps/pjt6/apps/blobtools-light-master/mapping2cov.py -a /storage/home/users/pjt6/phy/bams/Gp_Newton_haplotype1.fasta -bam pboe.bam -o pboe.cov
