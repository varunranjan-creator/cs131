#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 <YY-MM-DD or YYYY-MM-DD>"
    exit 1
fi

DATE="$1"
mkdir -p ~/TWEETS

# Greps tweets matching the date (supports both YY-MM-DD and YYYY-MM-DD)
grep -E "($DATE|20$DATE)" /mnt/scratch/CS131_billa/billandreopoulos/CS131_wba/DATA/downloaded_tweets_extend*.tsv > ~/TWEETS/"$DATE".out
