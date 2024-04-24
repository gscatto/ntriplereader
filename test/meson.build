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

test('test', executable('ntriplereader_test', 'test.c', dependencies: [ntriplereader_dep, ntriplereadertest_dep]))
