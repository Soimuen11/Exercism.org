#!/usr/bin/env bash

#!/usr/bin/env bash

function is_armstrong_number() {
  # Get the initial number from the user via $1
  local initial_num=$1
  local num_length=${#initial_num}
  local counter=0
  for ((i = 0; i < num_length; i++)); do
    digit=${initial_num:i:1}
    ((counter += digit ** num_length))
  done
  if ((counter == initial_num)); then
    echo "true"
  else
    echo "false"
  fi
}

is_armstrong_number "$@"
