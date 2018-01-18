# Extract Dickeya genome fasta files from GenBank database
# this is the script I run on my laptop
# Need Internet connection to wget the strain_name.py

## First, go to the folder 'experiments' where all experiments were stored.
mkdir -p ./fetch_genomes/Dickeya
cd ./fetch_genomes/Dickeya
mkdir ./old_list
mv Dickeya_GenBank ./old_list # Save old GenBank list for comparison
find . -maxdepth 1 -type f -exec rm -f {} + # remove old files in this directory but not the directories and the files in those directories

#1.1 Download Assembly GenBank ftp path, species names and strain names #txid for Dickeya is 204037
esearch -db assembly -query 'txid204037[Organism:exp] AND (latest[filter] AND all[filter] NOT anomalous[filter]' | efetch -format docsum | xtract -pattern DocumentSummary -element FtpPath_GenBank SpeciesName Sub_value Genbank > Dickeya_GenBank
# Edit file path for GCA_*fna.gz
cut -f 1 Dickeya_GenBank | sed 's/$/\//' > Dickeya_GenBank_ftp # This is the ftppath for the folder containing all files each strain
## Save the species and strain name into a file
cut -f 2,3 Dickeya_GenBank > Dickeya_strain
## Save the assembly accession number for each strain that were assembled
cut -f 4 Dickeya_GenBank > accessions


# use a python program, strain_name.py, to delete extra strain names, The strain_name.py was added to ./scripts before running the program
mkdir ./scripts
wget https://raw.githubusercontent.com/marktjs/Edirect/master/strain_name.py -O ./scripts/strain_name.py
chmod +x ./scripts/strain_name.py
python ./scripts/strain_name.py Dickeya_strain Dickeya_strain_clean
#add assemblyaccession to the right of each strain names because there are strains that have more than one assemblies
paste Dickeya_strain_clean accessions | tr '\t' '_' > Dickeya_strain_accession
sed 's/$/.fna.gz/' Dickeya_strain_accession > ccc # add fna.gz to the strain names
# Edit *fna.gz file path
cat Dickeya_GenBank_ftp | tr '/' '\t' | cut -f 10 > aa
paste Dickeya_GenBank_ftp aa | tr -d '\t'| sed 's/$/_genomic.fna.gz/' > Dickeya_GenBank_ftp_fna # this is the file that contains ftppath for downloading fna data in GenBank
# Download fna and decompress in Dickeya_genomes directory
rm -rf ./Dickeya_genomes # delete old genome files
mkdir ./Dickeya_genomes
sed 's/^/wget -r -np -nH --cut-dir=7 --level=1  -O .\/Dickeya_genomes\//' ccc > bb
paste bb Dickeya_GenBank_ftp_fna| tr '\t' ' ' | sh
# wget -r -np -nH --cut-dir=7 --level=1 --input-file=Dickeya_GenBank_ftp_fna --directory-prefix=Dickeya_genomes #download this way could change file order




# Decompress *.fna.gz files
cd ./Dickeya_genomes
gunzip *.gz
# example: ls *fna.gz|awk -F '.fna.gz' '{print"unzip " $0 " -d " $1}'|sh
# ls | awk -F '.fna' '{print "mkdir " $1 "; mv " $0 " " $1}' |sh # print mkdir $dir; mv $file $dir (create a dir for each strain)
cd ..
# Clean up
rm aa Dickeya_GenBank_ftp bb ccc
