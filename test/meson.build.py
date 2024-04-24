import os
import sys


sys.stdout.write('''\
ntriplereadertest_inc = include_directories('.')

ntriplereadertest_lib = library(
  'ntriplereadertest',
  'ntriplebuilderspy.c',
  include_directories: ntriplereader_inc,
  link_with: ntriplereader_lib
)

ntriplereadertest_dep = declare_dependency(
  link_with: ntriplereadertest_lib
)
''')

path = sys.argv[1]
for (dirpath, dirnames, filenames) in os.walk(path):
    for filename in filenames:
        if filename.endswith('test.c'):
            testname = filename.removesuffix('.c')
            line = f"test('{testname}', executable('ntriplereader_{testname}', '{filename}', dependencies: [ntriplereader_dep, ntriplereadertest_dep]))\n"
            sys.stdout.write(line)
