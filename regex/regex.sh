#!/bin/bash

# Corrected sed command for r0_input.txt
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

# Process r0_input.txt
sed -E 's/I am ([^\.]+)\. My favorite sandwich is ([^\.]+)\./1. \1\n2. \2\n/' r1_input.txt > r1_output.txt

# Process r1_input.txt
sed -E 's/sandwich with ([^ ]+(\.[^ ]*)*) ([^ ]*)/\n1. \1\n2. \3\n/' r2_input.txt > r2_output.txt

