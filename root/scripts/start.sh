#!/bin/bash

# start WeChat application in the background if wechat exists
if [ -f /usr/bin/wechat ]; then nohup /usr/bin/wechat > /dev/null 2>&1 & fi

# start window switcher application in the background
nohup sleep 2 && python /scripts/window_switcher.py > /dev/null 2>&1 &