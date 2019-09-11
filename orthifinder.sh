#! -cwd
cd /storage/home/users/pjt6/phy/orthofinder
conda activate orthofinder

orthofinder -S diamond -t 8 -f /storage/home/users/pjt6/phy/orthofinder

 python ../mcl_to_cafe.py -sp "GROS Hsc GPLIN GPALN Minc Hetgly" -i ./Results_*/Orthogroups.txt -o nematodes_orthofinder.clusters.txt
 
 
