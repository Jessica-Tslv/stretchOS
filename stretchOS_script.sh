#!/bin/bash

# You can update these with any message you want
messages=(
"🩻 stretchOS: Time to stand up. Your spine filed a complaint."
"💧 stretchOS: Hydration check. Your cells are politely asking for water."
"👀 stretchOS: 20-20-20 time. Look away from the screen"
"🚶 stretchOS: Walk around for a minute. Your legs require purpose."
"🧘 stretchOS: Stretch time. Pretend you're a well-balanced human."
"🦴 stretchOS: Your posture just rage-quit. Fix it."
"🌳 stretchOS: Reality check. Look around to see if the real world still exists."
)

while true
do
    # picks random message
    msg=${messages[$RANDOM % ${#messages[@]}]}

    osascript -e "display notification \"$msg\" with title \"stretchOS\""

    # wait 30 minutes
    sleep 30m
done