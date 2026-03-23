#!/bin/bash

clear

# heredoc ascii booting; text to ascii art
cat << "EOF"
 ____  _            _       _      ___  ____  
/ ___|| |_ _ __ ___| |_ ___| |__  / _ \/ ___| 
\___ \| __| '__/ _ \ __/ __| '_ \| | | \___ \ 
 ___) | |_| | |  __/ || (__| | | | |_| |___) |
|____/ \__|_|  \___|\__\___|_| |_|\___/|____/ 

EOF

echo -n "stretchOS Booting"
for i in {1..3}; do
    echo -n "."
    sleep 0.4
done
echo ""

echo ""
echo "⚠️  WARNING: You have been sitting too long."
echo "🦴 Posture pestering: ACTIVE"
echo "💧 Hydration guilt system: ENABLED"
echo ""
echo "❌ Press Ctrl + C to reclaim autonomy (not recommended)"
echo ""

# You can update these with any message you want
messages=(
"🩻 stretchOS: Time to stand up. Your spine filed a complaint."
"💧 stretchOS: Hydration check. Your cells are politely asking for water."
"👀 stretchOS: 20-20-20 time. Look away from the screen. I know it's hard."
"🎇 stretchOS: Take a sec to crack the neck."
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