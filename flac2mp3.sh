#!/bin/bash

for a in ./*.flac; do
  avconv -i "$a" -qscale:a 0 "${a[@]/%flac/mp3}"
done
