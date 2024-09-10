#!/bin/bash

# Corrected sed command for r0_input.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# Adjusted sed command for r1_input.txt
sed -E '/^\*  I am ([a-zA-Z]+)\, My favorite sandwich is ([a-zA-Z]+)\.$/!d; s/^\* I am ([a-zA-Z]+)\. My favorite sandwich is ([a-zA-Z]+)\. \1\n2. \2\n/' < r1_input.txt > r1_output.txt

# Corrected sed command for r2_input.txt
sed -E 's/\* ([a-zA-Z.]+), ([a-zA-Z.]+)\. ([a-zA-Z ]+)/1. \1\n2. \3\n\n1. \2\n2. \3\n/' < r2_input.txt > r2_output.txt
