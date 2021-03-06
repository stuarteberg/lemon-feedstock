
#!/bin/bash

mkdir build && cd build
cmake \
    -DCMAKE_PREFIX_PATH=$PREFIX \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_POSITION_INDEPENDENT_CODE=1 \
    ..
make

# Compile and run a few tests.
make error_test bfs_test
./test/error_test
./test/bfs_test

make install
