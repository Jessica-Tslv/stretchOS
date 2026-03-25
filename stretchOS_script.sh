#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m' # No Color

clear

# heredoc ascii booting; text to ascii art
echo -e "${GREEN}"
cat << "EOF"
 ____  _            _       _      ___  ____  
/ ___|| |_ _ __ ___| |_ ___| |__  / _ \/ ___| 
\___ \| __| '__/ _ \ __/ __| '_ \| | | \___ \ 
 ___) | |_| | |  __/ || (__| | | | |_| |___) |
|____/ \__|_|  \___|\__\___|_| |_|\___/|____/ 

EOF
echo -e "${NC}"

booting_text="stretchOS Booting"
dots="..."

# type text
echo -ne "${GREEN}"
for(( i=0; i<${#booting_text}; i++)); do
     echo -n "${booting_text:$i:1}"
     sleep 0.05
done

# then dots slower
for (( i=0; i<${#dots}; i++ )); do
    echo -n "${dots:$i:1}"
    sleep 0.4
done

echo -e "${NC}"
echo ""

echo ""
echo "⚠️  WARNING: You have been sitting too long."
echo -e "🦴 Posture pestering:      ${GREEN}ACTIVE${NC}"
echo -e "💧 Hydration guilt system: ${GREEN}ENABLED${NC}"
echo ""
echo "❌ Press Ctrl + C to reclaim autonomy (not recommended)"
echo ""

# You can update these with any message you want
messages=(
"🩻 stretchOS: Time to stand up. Your spine filed a complaint."
"💧 stretchOS: Hydration check. Your cells are politely asking for water."
"👀 stretchOS: 20-20-20 time. Look away from the screen. I know it's hard."
"🎇 stretchOS: Take a sec to crack the neck."
"🎇 stretchOS: Crack that back!"
"🚶 stretchOS: Walk around for a minute. Your legs require purpose."
"🧘 stretchOS: Stretch time. Pretend you're a well-balanced human."
"💧 stretchOS: Drink water. Now!"
"🦴 stretchOS: Your posture just rage-quit. Fix it."
"🌳 stretchOS: Reality check. Look around to see if the real world still exists."
)

while true
do
    # picks random message
    msg=${messages[$RANDOM % ${#messages[@]}]}

    osascript -e "display notification \"$msg\" with title \"stretchOS\""

    # wait 20 minutes before next message
    sleep 20m
done