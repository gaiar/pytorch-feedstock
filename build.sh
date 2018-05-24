#!/usr/bin/env bash

export CMAKE_LIBRARY_PATH=$PREFIX/lib:$PREFIX/include:$CMAKE_LIBRARY_PATH
export CMAKE_PREFIX_PATH=$PREFIX
export NO_CUDA=1
export TH_BINARY_BUILD=1
export PYTORCH_BUILD_VERSION=$PKG_VERSION
export PYTORCH_BUILD_NUMBER=$PKG_BUILDNUM
export NO_DISTRIBUTED=1

if [[ "$OSTYPE" == "darwin"* ]]; then
    MACOSX_DEPLOYMENT_TARGET=10.9 python setup.py install
else
    python setup.py install
fi

