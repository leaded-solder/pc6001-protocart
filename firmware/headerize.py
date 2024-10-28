import os, sys

# convert a rom for header purposes
if(len(sys.argv) < 2):
    print(f'usage: {sys.argv[0]} [romfile]')
    sys.exit(1)

with open(sys.argv[1], 'rb') as f:
    b = bytes(f.read())

with open('p6_bootrom.h', 'w') as w:
    w.write('unsigned char P6_bootrom[] = {\n')
    for o in range(len(b)):
        w.write('\t' + hex(b[o]) + ',\n')
    w.write('};\n')
    w.write(f'unsigned int P6_bootrom_len = {len(b)}; // does not appear to ever be consumed\n')
