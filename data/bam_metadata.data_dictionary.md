data dictionary for bam_metadata.csv

| Field Name | Data Type | Description |
| --- | --- | --- |
| filepath | string | The path of the directory where the file is stored |
| filename | string | The name of the file |
| indexfile | string | The name of the index file for the corresponding BAM file |
| filesize_in_Gb | float | The size of the file in gigabytes |
| readme | string | The path of the readme file for the corresponding BAM file |
| giab_id | string | The GIAB ID for the sample |
| biosample | string | The BioSample ID for the sample |
| trio | string | The relationship of the sample to the Ashkenazi trio |
| dna_id | string | The ID of the DNA sample |
| sort_order | string | The sort order used for the BAM file |
| aligner | string | command used to align reads to the reference extracted from the bam header |
| reference_genome | string | The name of the reference genome used for the BAM file |
| notes | string | Any additional notes about the metadata provided for this file|
