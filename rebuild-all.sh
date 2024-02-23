#!/usr/bin/env bash

readonly CURRENT_PATH=$(dirname "$(readlink -f "$0")")

# abis=(x86 armeabi-v7a arm64-v8a x86_64)
abis=(arm64-v8a)
for abi in ${abis[@]} ; do
    pushd ${CURRENT_PATH}/${abi}
    ${CURRENT_PATH}/${abi}/rebuild.sh
    popd
done