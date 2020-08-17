from collections import defaultdict
import os

old = """pboe.bam  pgona.bam  ppsue.bam
""".split()
bams = []
for i in old:
    new2 = "/storage/home/users/pjt6/phy/bams/%s" % i
    bams.append(new2)
    #print(bams)


for entry in bams:
    family = os.path.split(entry)[-1]
    #print(family)
    family = family.rstrip()
    outsh = "%s_deepv.sh" % family.split(".bam")[0]
    f_out = open(outsh, "w")
    # 6 cores, so only 1 runs on a "node*" at a time. 
    #print("\nqsub -l hostname=phylo -pe multi 10 -l singularity -b y singularity run /storage/home/users/pjt6/docker/deepvariant/deepvariant_0.10.0.sif /storage/home/users/pjt6/docker/deepvariant/%s_deepv.sh\n" % family.split(".bam")[0])
    #f_out.write("#!/bin/bash\n")
    #f_out.write("#$ -cwd\n")5
    #f_out.write("#$ -pe multi 2\n")
    f_out.write("cd /storage/home/users/pjt6/phy/bams//\n")
    deepv_cmd = """
BIN_VERSION="0.10.0"
    # Run DeepVariant.
/opt/deepvariant/bin/run_deepvariant \
      --model_type=WGS \
      --ref=ucsc.hg19.fasta \
      --reads=%s \
      --output_vcf=%s.vcf \
      --output_gvcf=%s.g.vcf.gz \
      --num_shards=20\n """ % (entry, entry.split(".bam")[0], entry.split(".bam")[0])

    f_out.write(deepv_cmd)
    print(deepv_cmd)
    print("mv %s ./done_bams/\n" % entry)
    print("\nsingularity run /storage/home/users/pjt6/docker/deepvariant/deepvariant_0.10.0.sif \n")
    f_out.close()
    
