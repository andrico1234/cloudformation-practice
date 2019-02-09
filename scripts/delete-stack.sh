#!/bin/bash

STACK_NAME="static-site-stack"
ERROR_DESCRIPTION="ValidationError"

echo "Checking to see if stack exists..."
if aws cloudformation list-stack-resources --stack-name $STACK_NAME 2>&1 | grep -q $ERROR_DESCRIPTION; then
  echo "Stack does not exist"
else
  echo "Deleting stack..."
  aws cloudformation delete-stack \
    --stack-name $STACK_NAME
fi

echo "Completed!"
