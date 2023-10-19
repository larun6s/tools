#!/bin/bash
log="/Users/arunlingala/dev/tools/logs/dailyChores.log"
exec >>$log 2>&1
echo
date

plannerStandup=""
scrumBoard=""

# DE standup
if [ "$1" -eq "1" ]; then
  plannerStandup="https://tasks.office.com/6Sense.onmicrosoft.com/en-GB/Home/Planner#/plantaskboard?groupId=1303dc29-3af2-4707-b230-3f5da2eb9fa5&planId=3k09FreDSU2b5hRHf2vkw2QAHHAw&taskId=MndpDWfU-EGAwtrRyW8K1WQADnqm"
  scrumBoard="https://6sense.atlassian.net/jira/software/c/projects/CORE/boards/306?assignee=62df7228831f463d28e885e6"
fi

# DACQ standup
if [ "$1" -eq "2" ]; then
  plannerStandup="https://tasks.office.com/6Sense.onmicrosoft.com/Home/Task/KO2T1ghM-Ei4XFu7xB-TBGQANUeH?Type=TaskLink&Channel=Link&CreatedTime=638284547192750000"
  scrumBoard="https://6sense.atlassian.net/jira/software/c/projects/CORE/boards/304?assignee=62df7228831f463d28e885e6"
fi


# Open the following pages
myDailyChoresLinks=(
 $plannerStandup
 $scrumBoard
 )

echo ${myDailyChoresLinks}

last=${#myDailyChoresLinks[@]}


# OPEN THE LINKS IN THE REVERSE ORDER
for (( i=last-1 ; i>=0 ; i-- ));do
    echo ${myDailyChoresLinks[i]}
    open -a "Google Chrome" ${myDailyChoresLinks[i]}
    sleep 3
done
