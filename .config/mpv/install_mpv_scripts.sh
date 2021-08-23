#!/bin/bash

MPV_CONFIG=~/.config/mpv/scripts

mkdir -p $MPV_CONFIG
git clone git@github.com:jonniek/mpv-nextfile.git $MPV_CONFIG/mpv-nextfile
git clone git@github.com:hacel/recent $MPV_CONFIG/recent
ln -s $MPV_CONFIG/mpv-nextfile/nextfile.lua $MPV_CONFIG/nextfile.lua
ln -s $MPV_CONFIG/recent/recent.lua $MPV_CONFIG/recent.lua
