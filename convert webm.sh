#!/bin/bash

# Minta input filename dari user
echo “Input File“
read input_file

echo “Output Filename“
read output_name


# Ambil folder/dir dari input_file
input_dir=$(dirname "$input_file")

# Bentuk full path untuk output dengan ekstensi .webp
output_file="$input_dir/$output_name.webm"

ffmpeg -i "$input_file" -vf "fps=24,scale=1080:-1:flags=lanczos" "$output_file"

echo "Finish"