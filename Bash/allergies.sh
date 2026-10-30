#!/usr/bin/env bash

score=$1
allergen=$3

declare -A allergens=(
  [eggs]=1
  [peanuts]=2
  [shellfish]=4
  [strawberries]=8
  [tomatoes]=16
  [chocolate]=32
  [pollen]=64
  [cats]=128
)
declare -a names=("eggs" "peanuts" "shellfish" "strawberries" "tomatoes" "chocolate" "pollen" "cats")

function check_positive_allergies() {
  local result=$(($1 & allergens[$2]))
  if [[ $result != 0 ]]; then
    echo "true"
  else
    echo "false"
  fi
}

function list_allergies() {
  local found=()
  for name in "${names[@]}"; do
    if (($1 & allergens[$name])); then
      found+=("$name")
    fi
  done
  echo "${found[*]}"
}

if [[ $2 == "allergic_to" ]]; then
  check_positive_allergies "$score" "$allergen"
elif [[ $2 == "list" ]]; then
  list_allergies "$score"
fi
