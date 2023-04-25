## fastq_metadata Data Dictionary


| Field Name                    | Description                                                                      |
|-------------------------------|----------------------------------------------------------------------------------|
| filepath                      | The path of the file location on the system                                      |
| filename                      | The name of the file including extension                                         |
| filesize_in_Gb                | The size of the file in gigabytes                                                |
| readme                        | Path to the README file associated with the file                                 |
| giab_id                       | Genome in a Bottle (GIAB) sample identifier                                      |
| biosample                     | SRA BioSample accession number                                                   |
| trio                          | Family trio identifier                                                           |
| dna_id                        | sample identifier for the batch of DNA sequenced                                 |
| encoding                      | Sequencing platform and version used                                             |
| total_sequences               | Total number of sequences in the file                                            |
| total_bases                   | Total number of bases in the file                                                |
| sequences_flagged_as_poor_quality | Number of sequences flagged as poor quality                                  |
| pct_gc                        | Percentage of bases in the file that are either guanine or cytosine              |
| mode_length                   | The most frequently occurring sequence length in the file                        |
| mode_quality                  | The most frequently occurring sequence quality score in the file, expressed as a Phred quality score |

