#!/bin/bash
./$1
RETURN=$?

if [ $RETURN -eq 0 ];
then
  echo "The script myscript.sh was executed successfuly"
  exit 0
else
  echo "The script myscript.sh was NOT executed successfuly and returned the code $RETURN"
  exit $RETURN
fi 
