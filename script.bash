#!/bin/bash
echo "Hello, first argument: $1, third: $3"
echo "Number of passed args: $#"
echo "My PID: $$"
touch /
echo "Touch exit code: $?"