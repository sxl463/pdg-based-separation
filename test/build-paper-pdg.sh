#!/bin/sh


CXX=/usr/local/bin/clang
OPT=/usr/local/bin/opt



$CXX -emit-llvm -c paper.c -o paper.bc
