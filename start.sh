#!/bin/bash

: ${REQUESTS_PER_SECOND:=10}
REQS_PER_PROCESS=$(( REQUESTS_PER_SECOND / 5 ))
while :
do
  for i in `seq 1 5`; do
	   (curl -s $PING_URL?[1-$REQS_PER_PROCESS] > /dev/null) & pidlist="$pidlist $!"
  done
  sleep 1
done
