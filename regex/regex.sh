sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt > r0_output.txt

sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r1_input.txt > r1_output.txt

sed -E 's/\* ([a-zA-Z.]+), ([a-zA-Z.]+)\. ([a-zA-Z ]+)/1. \1\n2. \3\n\n1. \2\n2. \3\n/' < r2_input.txt > r2_output.txt
