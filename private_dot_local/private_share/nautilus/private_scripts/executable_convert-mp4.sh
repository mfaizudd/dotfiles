#!/bin/bash
alacritty \
  -o window.dimensions.{columns=120,lines=30} \
  -e ffmpeg \
    -i $1 \
    -c:v libx264 \
    -c:a copy \
    $1_converted.mp4
