#!/bin/sh

if [ "$1" = "" ]; then
  COMMAND="/sipp/sipp"
else
  COMMAND="$@"
fi

exec ${COMMAND}