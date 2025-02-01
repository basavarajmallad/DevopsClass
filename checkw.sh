#!/bin/bash
word=$1
grep -l "$word" * > listfile1
echo $?
cat listfile1
