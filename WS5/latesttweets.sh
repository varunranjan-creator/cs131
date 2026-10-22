#!/bin/bash
mkdir -p ~/TWEETS
touch ~/ALLTWEETS.out

# Append files created in the last 5 minutes to ~/ALLTWEETS.out and delete them
find ~/TWEETS -type f -name "*.out" -mmin -5 | xargs -r -i sh -c 'cat "{}" >> ~/ALLTWEETS.out && rm -f "{}"'
