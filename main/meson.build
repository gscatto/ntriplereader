ntriplereader_inc = include_directories('.')

ntriplereader_lib = library(
  'ntriplereader',
  ['ntriplereader.c', 'ntriplebuilder.c'],
  include_directories: ntriplereader_inc
)

ntriplereader_dep = declare_dependency(
  link_with: ntriplereader_lib,
  include_directories: ntriplereader_inc
)
