#!/usr/bin/env bash

result=$(diff data/solution data/output)

if [ $? -eq 0 ]
then
  echo "Valid Sorting Algorithm!"
  exit 0
else
  echo "Invalid Sorting Algorithm!"
  echo "$result"
  exit 1
fi
