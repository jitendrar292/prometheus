#!/usr/bin/env bash

DIR=$( cd "$(dirname "${BASH_SOURCE[0]}")" || exit ; pwd -P )
DIR=${DIR}/..

rm -rf ${DIR}/bin
echo Building Linux Binaries
GOOS=linux GOARCH=amd64 PROMU_BINARIES=prometheus,promtool PREFIX=${DIR}/bin/linux make -C ${DIR}  build

echo Building macOS Binaries
GOOS=darwin GOARCH=amd64 PROMU_BINARIES=prometheus,promtool PREFIX=${DIR}/bin/macos make -C ${DIR} build

echo Building Windows Binaries
GOOS=windows GOARCH=amd64 PROMU_BINARIES=prometheus,promtool PREFIX=${DIR}/bin/windows make -C ${DIR} build
