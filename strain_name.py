wbuffer=""
with open("Dickeya_Species_strain", "r") as inf:
    for line in inf:
        line = line.strip().replace(' ', '_')
        inline = line.split('\t')
        if inline[1] in inline[0]:
            wbuffer+= inline[0]+'\n'
        else:
            wbuffer+= inline[0]+'_'+inline[1]+'\n'

with open("Dickeya_Species_Strain_clean","w") as outf:
    outf.write(wbuffer)
