#!/bin/bash

p_name=$1

if  ps -ef | grep  "$p_name" > /dev/null; then

  echo "$p_name is running"
else
  echo "$p_name is not running"

fi
