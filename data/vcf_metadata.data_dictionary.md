| Field name | Description |
| --- | --- |
| filepath | The file path where the data for this entry can be found. |
| location | Whether the file is from the NIST NIH hosted ftp site (ftp) or Human Pangenome Project S3 bucket (S3). |
| filesize_in_Gb | The size of the file in gigabytes. |
| readme | Path to the README file associated with the file . |
| giab_id |Identifier for the Genome in a Bottle (GIAB) dataset |
| biosample | SRA BioSample accession number |
| trio | Identifier for the GIAB trio the sample belongs: NA12878 (note not a trio) AshkenazimTrio or ChineseTrio |
| dna_id | sample identifier for the batch of DNA sequenced |
| failed_filters | The number of failed filters for this entry. |
| passed_filters | The number of passed filters for this entry. |
| snps | The number of SNPs identified in this entry. |
| mnps | The number of MNPs identified in this entry. |
| insertions | The number of insertions identified in this entry. |
| deletions | The number of deletions identified in this entry. |
| indels | The number of indels identified in this entry. |
| same_as_reference | Whether or not the variant is the same as the reference. |
| phased_genotypes | Whether or not the genotypes are phased. |
| snp transitions/transversions | The ratio of SNPs that are transitions vs. transversions. |
| hethom_ratio | The ratio of heterozygous to homozygous variants. |
| insertion/deletion ratio | The ratio of insertions to deletions. |
| indel/snp+mnp ratio | The ratio of indels to SNPs and MNPs. |
| breakends | The number of breakends identified in this entry. |
| symbolic svs | Whether or not symbolic SVs were identified in this entry. |
| symbolic sv het/hom ratio | The ratio of heterozygous to homozygous symbolic SVs. |
| missing genotype | Whether or not the genotype is missing. |
| no genotypes | The number of genotypes that are missing. |
| partial genotype | Whether or not the genotype is partial. |
| md5key | Unique identifier for the file based on the file name and path, generated using the MD5 hashing algorithm. |