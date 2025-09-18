#!/bin/bash

if [ "$(pomo status)" == "? [0/0] -" ]; then
	echo ""
else
	pomo status
fi
