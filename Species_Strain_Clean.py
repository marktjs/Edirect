#!/usr/bin/python
# This py delete extra strain names from Edirect Species Sub_value (strain) extraction
# This is a draft to build a py progame to clean bacterial species and strain names, a complete version was renamed strain_name.py


def
wbuffer=""
with open("Dickeya_Species_strain", "r") as inf:
    for line in inf:
        line = line.strip().replace(' ', '_')
        inline = line.split('\t')
        if inline[1] in inline[0]:
            wbuffer+= inline[0]+'\n'
        else:
            wbuffer+= inline[0]+' '+inline[1]+'\n'

with open("Dickeya_Species_Strain_clean","w") as outf:
    outf.write(wbuffer)
