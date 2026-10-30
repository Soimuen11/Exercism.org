#!/usr/bin/env bash

word=$1
for ((i = ${#word} - 1; i >= 0; i--)); do
  printf '%s' "${word:i:1}"
done
