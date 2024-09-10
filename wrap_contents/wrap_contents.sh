#!/bin/bash

cd wrap_contents.sh || exit 1

gcc -o wrap_contents wrap_contents.c

# Assign arguments to variables
contents_file=$1
specifier=$2
output_file=$3

# Construct header and footer filenames
header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

# Check if the contents, header, and footer files exist
if [ ! -f "$contents_file" ]; then
  echo "Contents file '$contents_file' not found!"
  exit 1
fi

if [ ! -f "$header_file" ]; then
  echo "Header file '$header_file' not found!"
  exit 1
fi

if [ ! -f "$footer_file" ]; then
  echo "Footer file '$footer_file' not found!"
  exit 1
fi

# Combine the header, contents, and footer into the output file
{
  cat "$header_file"
  cat "$contents_file"
  cat "$footer_file"
} > "$output_file"
