#!/bin/bash
log="/Users/arunlingala/dev/tools/logs/dailyChores.log"
exec >>$log 2>&1
echo
date

plannerStandup="https://tasks.office.com/6Sense.onmicrosoft.com/Home/Task/9w1cwD6OykehzcgJFYQgYmQACkCm?Type=TaskLink&Channel=Link&CreatedTime=638199431303510000"
scrumBoard="https://6sense.atlassian.net/jira/software/c/projects/CORE/boards/304?assignee=62df7228831f463d28e885e6"
sprintExpectations="https://6sense.atlassian.net/wiki/spaces/EN/pages/2800224015/DAPy+Sprint+Planning+Place+Holder"


# Open the following pages
myDailyChoresLinks=(
 $plannerStandup
 $planner
 $scrumBoard
 )

last=${#myDailyChoresLinks[@]}


# OPEN THE LINKS IN THE REVERSE ORDER
for (( i=last-1 ; i>=0 ; i-- ));do
    echo ${myDailyChoresLinks[i]}
    open -a "Google Chrome" ${myDailyChoresLinks[i]}
    sleep 3
done
