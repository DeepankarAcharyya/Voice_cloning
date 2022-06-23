#!/bin/sh
cd audio_files_raw
files="*.wav"
pwd
for f in $files
do
  sox "$f" "audio_dataset/${f%.*}_part_.wav" silence 1 0.1 1% 1 0.1 1% : newfile : restart
done