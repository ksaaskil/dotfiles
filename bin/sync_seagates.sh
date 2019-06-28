#!/usr/bin/env bash
# Simple but useful script for syncing pictures and LR catalogues between my drives
rsync -aihW --progress --log-file=ingest.log /Volumes/Seagate\ Expansion\ Drive/Pictures/ /Volumes/Seagate\ 4\ TB/Pictures/
rsync -aihW --progress --log-file=ingest-lr.log /Users/ksaaskil/Pictures/Lightroom /Volumes/Seagate\ 4\ TB/Lightroom
