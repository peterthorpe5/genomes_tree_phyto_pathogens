cd /storage/home/users/pjt6/docker/singulairty/funannotate/ppsue

echo "running diamond-BLAST against NR" 
diam_p="/storage/home/users/User_name/shelf_apps/apps/diamond blastp
	-p 8 --more-sensitive -e 0.00001
	 -q /storage/home/users/pjt6/docker/singulairty/funannotate/ppsue/ppsue/annotate_results/ppsue.v1_ppsue.proteins.fa
	   -d /shelf/public/blastntnr/blastDatabases/nr_PT.dmnd
	   --outfmt 5 --salltitles
	   --out ppsue_V1.0.proteins.fa_vs_nr.xml" 
echo ${diam_p} 
eval ${diam_p}
wait