#!/bin/python
# This py delete extra strain names from Edirect Species Sub_value (strain) extraction

wbuffer=""
with open("Dickeya_Species_strain", "r") as inf:
    for line in inf:
        line = line.strip()
        inline = line.split('\t')
        if inline[1] in inline[0]:
            wbuffer+= inline[0]+'\n'
        else:
            wbuffer+= inline[0]+' '+inline[1]+'\n'

with open("Dickeya_Species_Strain_clean","w") as outf:
    outf.write(wbuffer)
