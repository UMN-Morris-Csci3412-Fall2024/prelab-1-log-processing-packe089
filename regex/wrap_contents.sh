#!/bin/bash

# Get the arguments
contents_file=$1
specifier=$2
output_file=$3

# Construct the header and footer file names
header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

# Check if the header and footer files exist
if [ ! -f "$header_file" ]; then
    echo "Header file $header_file does not exist."
    exit 1
fi

if [ ! -f "$footer_file" ]; then
    echo "Footer file $footer_file does not exist."
    exit 1
fi

# Concatenate the header, contents, and footer into the output file
cat "$header_file" "$contents_file" "$footer_file" > "$output_file"

echo "Wrapped contents created in $output_file"
