#!/bin/bash

# Author: cyberpunkcoder (github.com/cyberpunkcoder) (cyberpunkcoder@gmail.com)
# Date: October 29, 2020
# Bash script to bring up your IDE and randomly shuffle your music into a play queue

# TODO: change this line to your coding music directory
DIR=~/Music/Coding/

IFS=$'\n'
SONGS="$(ls $DIR | shuf)"

# TODO: change this line to your preferred IDE
code

rhythmbox-client --pause
rhythmbox-client --clear-queue

# automatically shuffle playlist
for song in $SONGS; do
	rhythmbox-client --enqueue "$DIR$song"
done

rhythmbox-client --next
rhythmbox-client --play
