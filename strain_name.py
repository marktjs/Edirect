def strain_name(infile, outfile):
    wbuffer=""
    with open(infile, "r") as inf:
        for line in inf:
            line = line.strip().replace(' ', '_')
            inline = line.split('\t')
            if inline[1] in inline[0]:
                wbuffer+= inline[0]+'\n'
            else:
                wbuffer+= inline[0]+'_'+inline[1]+'\n'

    with open(outfile,"w") as outf:
        outf.write(wbuffer)
if __name__ == "__main__":
    import sys
    strain_name(str(sys.argv[1]), str(sys.argv[2]))
