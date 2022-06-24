#!/bin/sh
cd audio_files_raw
cd Iteration_02
files="*.wav"

for input in $files; do
  output="audio_dataset/$input"
  sox "$input" "$output" silence 1 0.05 0.1% reverse silence 1 0.05 0.1% reverse;
done