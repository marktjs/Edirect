```sh
sudo -H pip install upgrade pip
sudo -H pip3 install pyani
```
find the two python files and modify the first line to /usr/bin/python3

Examples
```bash
$ average_nucleotide_identity.py -h
usage: average_nucleotide_identity.py [-h] [-o OUTDIRNAME] [-i INDIRNAME] [-v]
                                      [-f] [-s FRAGSIZE] [-l LOGFILE]
                                      [--skip_nucmer] [--skip_blastn]
                                      [--noclobber] [--nocompress] [-g]
                                      [--gformat GFORMAT] [--gmethod GMETHOD]
                                      [--labels LABELS] [--classes CLASSES]
                                      [-m METHOD] [--scheduler SCHEDULER]
                                      [--workers WORKERS]
                                      [--SGEgroupsize SGEGROUPSIZE]
                                      [--maxmatch] [--nucmer_exe NUCMER_EXE]
                                      [--blastn_exe BLASTN_EXE]
                                      [--makeblastdb_exe MAKEBLASTDB_EXE]
                                      [--blastall_exe BLASTALL_EXE]
                                      [--formatdb_exe FORMATDB_EXE]
                                      [--write_excel] [--subsample SUBSAMPLE]
                                      [--seed SEED] [--jobprefix JOBPREFIX]


[…]


$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIm_output -m ANIm -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIb_output -m ANIb -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIblastall_output -m ANIblastall -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_TETRA_output -m TETRA -g
```

```bash
$ genbank_get_genomes_by_taxon.py -h
usage: genbacnk_get_genomes_by_taxon.py [-h] [-o OUTDIRNAME] [-t TAXON] [-v]
                                        [-f] [--noclobber] [-l LOGFILE]
                                        [--format FORMAT] [--email EMAIL]
                                        [--retries RETRIES]
                                        [--batchsize BATCHSIZE]
[…]


 genbank_get_genomes_by_taxon.py -o Caulobacter_downloads -v -t 75 -l Caulobacter_downloads.log --email me@my.email.domain
```

