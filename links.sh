#!/bin/bash
log="/Users/arunlingala/dev/tools/logs/dailyChores.log"
exec >>$log 2>&1
echo
date

function timeAtleast() {
    desired_hour=$1
    desired_minute=$2
    current_hour=$(date +%H)
    current_minute=$(date +%M)

    echo "Current hour: $current_hour, Current minutes: $current_minute"

    if [ "$current_hour" -eq "$desired_hour" ] && [ "$current_minute" -ge "$desired_minute" ]; then
        return 0  # True
    else
        return 1  # False
    fi
}

# Open the following pages
links=()

if timeAtleast 12 30; then
links=(
 "https://6sense-my.sharepoint.com/:x:/p/arun_lingala/EV_Jk5XoiJRHmtdy-kTo_7ABHt2XMNJhiZT41wJFnDj4dg?e=ETyLel"
 )
fi

echo ${links}

last=${#links[@]}


# OPEN THE LINKS IN THE REVERSE ORDER
for (( i=last-1 ; i>=0 ; i-- ));do
    echo ${links[i]}
    open -a "Google Chrome" ${links[i]}
    sleep 3
done
