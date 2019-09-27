from collections import defaultdict



################################################################
# this is a file w=get_clustr_sequences.py > gene_to_cluster.txt
# eg:
#Effector	GPALN_009669-T1	3
#busco	GPALN_006604-T1	17
#Effector	GPALN_002295-T1	21
gene_to_type = defaultdict(str)
gene_to_cluster = defaultdict(str)
cluster_to_gene = defaultdict(str)
type_count = defaultdict(int)
#with open("RBBH_cluster_assignmenr.txt") as fh:
with open("orthofinder_cluster_assignment.tab") as fh:
    for line in fh:
        if line.startswith("#"):
            continue
        if not line.strip():
                continue  #  if the last line is blank
        data = line.rstrip().split()
        gene_type = data[0]
        gene = data[1]
        cluster = data[2]
        gene_to_type[gene]= gene_type.rstrip()
        gene_to_cluster[gene.rstrip()] = cluster.rstrip()
        cluster_to_gene[cluster.rstrip()] = gene.rstrip()


cluster_dn_ds = defaultdict(str)
#with open("RBBH_no_gaps_DN_DS.txt") as fh:
with open("orthofinder_no_gaps_DN_DS.txt") as fh:
    for line in fh:
        if line.startswith("#"):
            continue
        if not line.strip():
                continue  #  if the last line is blank
        data = line.rstrip().split()
        cluster = data[0]
        cluster = cluster.split("_")[2]
        dn_ds = data[-2].rstrip()
        dn_ds = dn_ds.replace("o3=", "")
        cluster_dn_ds[cluster.rstrip()] = dn_ds.rstrip()
        gene = cluster_to_gene[cluster]
        dn_ds = cluster_dn_ds[cluster.rstrip()]
        gene_types = gene_to_type[gene]
        if float(dn_ds) > 1.0:
            type_count[gene_types] + 1
        #if gene_types == "busco":
            #print("%s\t%s\t%s\t%s" %( gene, gene_types, cluster, dn_ds))
        if gene_types == "RXLR":
            # continue
            print("%s\t%s\t%s\t%s" %( gene, gene_types, cluster, dn_ds))


print("othofinder BUSCO", (1.0/228)*100, " %")
print("othofinder RXLR", (63.0/314)*100, " %")
print("RBBH RXLR", (4.0/142)*100, " %")
print("BUSCO RXLR", (0.0/142)*100, " %")
