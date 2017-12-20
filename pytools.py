def Clean_strain_Names("rawlistfile"):
    wbuffer=""
    with open("rawlistfile", "r") as inf:
        for line in inf:
            line = line.strip().replace(' ', '_')
            inline = line.split('\t')
            if inline[1] in inline[0]:
                wbuffer+= inline[0]+'\n'
            else:
                wbuffer+= inline[0]+'_'+inline[1]+'\n'
    inf.close() # close handler to free up system resource

    with open("Dickeya_Species_Strain_clean","w") as outf:
        outf.write(wbuffer)
    outf.close()