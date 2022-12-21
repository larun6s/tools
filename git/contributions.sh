#!/bin/bash
today=`date +"%Y-%m-%d"`
echo $today
url="https://github.com/6si/dapy/graphs/contributors?from=2022-10-01&to="+$today"&type=c"
echo $url

open -a "Google Chrome" ${url}
