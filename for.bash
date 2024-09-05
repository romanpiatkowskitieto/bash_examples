#!/bin/bash
echo "number in 2 4 6 8 10"
for number in 2 4 6 8 10
do
  echo -n "$number, "
done

echo; echo "number in {2..10}"
for number in {2..10}
do
  echo -n "$number, "
done

echo; echo "number in {2..10..2}"
for number in {2..10..2}
do
  echo -n "$number, "
done

echo; echo "for with (( ))"
for ((number=2; number<=10; number=number+2)); do
  echo -n "$number, "
done
echo