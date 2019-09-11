cd /home/peter/Desktop/pgnomes/pgona


fasta_filenames=*.fasta

for f in ${fasta_filenames}
do
	echo "Running  ${f}"
	#step1
	cmd="perl /home/peter/Downloads/TransposonPSI_08222010/transposonPSI.pl ${f} nuc" 
	echo ${cmd}
	eval ${cmd}
	rm -rf *temp
	wait
done




