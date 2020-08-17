cd /storage/home/users/pjt6/phy/bams//

BIN_VERSION="0.10.0"
    # Run DeepVariant.
/opt/deepvariant/bin/run_deepvariant       --model_type=WGS       --ref=ucsc.hg19.fasta       --reads=/storage/home/users/pjt6/phy/bams/ppsue.bam       --output_vcf=/storage/home/users/pjt6/phy/bams/ppsue.vcf       --output_gvcf=/storage/home/users/pjt6/phy/bams/ppsue.g.vcf.gz       --num_shards=20
 