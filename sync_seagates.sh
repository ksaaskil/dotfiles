#!/usr/bin/env bash
# Sync pictures between my drives
rsync -aihW --progress --log-file=ingest.log ls /Volumes/Expansion/Pictures/ /Volumes/Seagate\ 4\ TB/Pictures/
# rsync -aihW --progress --log-file=ingest-lr.log /Users/ksaaskil/Pictures/Lightroom /Volumes/Seagate\ 4\ TB/Lightroom
