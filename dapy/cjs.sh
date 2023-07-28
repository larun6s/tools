#!/bin/bash

# Check if there is an active VPN connection
if ifconfig | grep -E '(^utun|ppp)' >/dev/null; then
  echo "VPN is connected."
  ssh -i ~/dev/azure/dapy-cjs_key.pem azureuser@10.0.0.113
else
  echo "VPN is not connected."
  exit 0
fi