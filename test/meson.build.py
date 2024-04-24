import os
import sys


path = sys.argv[1]
for (dirpath, dirnames, filenames) in os.walk(path):
    for filename in filenames:
        if filename.endswith('test.c'):
            testname = filename.removesuffix('.c')
            line = f"test('{testname}', executable('ntriplereader_{testname}', '{filename}', dependencies: ntriplereader_dep))\n"
            sys.stdout.write(line)
