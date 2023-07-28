#!/bin/bash
if [ $# -eq 0 ]; then
  echo "Usage: $0 <WF_ID>"
  exit 1
fi

# Check if there is an active VPN connection
if ifconfig | grep -E '(^utun|ppp)' >/dev/null; then
  echo "VPN is connected."
  ssh -i ~/dev/azure/dapy-cjs_key.pem azureuser@10.0.0.113 "~/cjs/utilities/wf_lag.sh $1"
else
  echo "VPN is not connected."
  exit 0
fi