#!/bin/bash
if test "$OS" = "Windows_NT"
then # Windows
  .paket/paket.exe install
  exit_code=$?
  if [ $exit_code -ne 0 ]; then
    exit $exit_code
  fi
  dotnet restore
  exit_code=$?
  if [ $exit_code -ne 0 ]; then
    exit $exit_code
  fi
  packages/FAKE/tools/FAKE.exe $@ --fsiargs build.fsx
else # Non Windows
  mono .paket/paket.exe install
  exit_code=$?
  if [ $exit_code -ne 0 ]; then
    exit $exit_code
  fi
  mono dotnet restore
  exit_code=$?
  if [ $exit_code -ne 0 ]; then
    exit $exit_code
  fi
  mono packages/FAKE/tools/FAKE.exe $@ --fsiargs -d:MONO build.fsx
fi