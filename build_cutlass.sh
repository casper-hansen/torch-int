export CUDACXX=/usr/local/cuda/bin/nvcc
#export CC=/usr/bin/gcc
#export CXX=/usr/bin/g++
cd submodules/cutlass
rm -rf build
mkdir -p build && cd build
cmake .. -DCUTLASS_NVCC_ARCHS=80 -DCUTLASS_ENABLE_TESTS=OFF -DCUTLASS_UNITY_BUILD_ENABLED=ON
make -j $(nproc)
