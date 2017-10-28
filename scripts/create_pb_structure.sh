#!/bin/bash

# Script to create ansible playbook directory tree

# define roles
roles=(common)
dirs=(defaults files tasks handlers meta vars templates)

# create playbook
for i in ${roles[@]}; do
  for j in ${dirs[@]}; do
    mkdir -p ../roles/${i}/${j}
  done
done

echo "playbook directory tree created"
exit 0
