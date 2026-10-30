#!/usr/bin/env bash

if [[ $# != 0 ]]; then
  name="$1"
  echo "One for $name, one for me."
else
  echo "One for you, one for me."
fi
