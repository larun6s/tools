#!/bin/bash
log="/Users/arunlingala/dev/tools/logs/dailyChores.log"
exec >>$log 2>&1
echo
date

dailyChoresGuide="https://6sense.atlassian.net/wiki/spaces/~62df7228831f463d28e885e6/pages/2598633496/Daily+Chores"
planner="https://tasks.office.com/6Sense.onmicrosoft.com/en-GB/Home/Planner/#/plantaskboard?groupId=1303dc29-3af2-4707-b230-3f5da2eb9fa5&planId=3k09FreDSU2b5hRHf2vkw2QAHHAw"
scrumBoard="https://6sense.atlassian.net/jira/software/c/projects/DACQ/boards/138?assignee=62df7228831f463d28e885e6"
myTkts="https://6sense.atlassian.net/issues/?filter=13935"
createdTkts="https://6sense.atlassian.net/issues/?filter=13885"
DAPyMom="https://6sense.atlassian.net/wiki/spaces/EN/pages/2597913035/DAPy+MoM+Daily+Sync+Up"
atlassianNotifications="https://start.atlassian.com/notifications"
sprintExpectations="https://6sense.atlassian.net/wiki/spaces/~62df7228831f463d28e885e6/pages/2603057297/Sprint+Chores#Planning"

# Open the following pages
myDailyChoresLinks=($dailyChoresGuide
 $sprintExpectations
 $planner
 # $scrumBoard
 $myTkts
 $createdTkts
 $DAPyMom
 $atlassianNotifications)

last=${#myDailyChoresLinks[@]}


# OPEN THE LINKS IN THE REVERSE ORDER
for (( i=last-1 ; i>=0 ; i-- ));do
    echo ${myDailyChoresLinks[i]}
    open -a "Google Chrome" ${myDailyChoresLinks[i]}
    sleep 3
done
