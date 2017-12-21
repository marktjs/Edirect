```sh
sudo -H pip install upgrade pip
sudo -H pip3 install pyani
```
find the two python files and modify the first line to /usr/bin/python3

Examples
```bash
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIm_output -m ANIm -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIb_output -m ANIb -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_ANIblastall_output -m ANIblastall -g
$ average_nucleotide_identity.py -i tests/test_ani_data/ -o tests/test_TETRA_output -m TETRA -g
```

```bash
 genbank_get_genomes_by_taxon.py -o Caulobacter_downloads -v -t 75 -l Caulobacter_downloads.log --email me@my.email.domain
```

