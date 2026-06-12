#!/bin/sh
_DATE=$(date -I)
_WORD=script
echo "echo is in the `which echo`";
echo "Date to day is ${_DATE}";
bash -c 'echo -e "Uptime Today\n`uptime`"';

echo "${_WORD}ing is fun";
