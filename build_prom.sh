#!/usr/bin/env bash

rm -rf ./bin
echo Building Linux Binaries
GOOS=linux GOARCH=amd64 PROMU_BINARIES=prometheus PREFIX=./bin/linux make build
echo Building macOS Binaries
GOOS=darwin GOARCH=amd64 PROMU_BINARIES=prometheus PREFIX=./bin/macos make build
echo Building Windows Binaries
GOOS=windows GOARCH=amd64 PROMU_BINARIES=prometheus PREFIX=./bin/windows make build
