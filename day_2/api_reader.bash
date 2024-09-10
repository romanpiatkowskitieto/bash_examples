#!/bin/bash
username=$1
url="https://api.github.com/users/$username/repos"

function usage {
  echo "Usage: $0 <username>"
}

if [ $# -eq 0 ]; then
  echo "username parameter is required"
  usage
  exit 1;
fi

json_data="$(curl -s $url)"
status_code=$(echo $json_data | jq '.status?')

if [ $status_code ]; then
  message="$(echo $json_data | jq -r '.message')"
  echo "Error when fetching from API - $status_code code. Message : $message"
  exit 1
fi

echo "$username owns:"

repos="$(echo $json_data | jq -c '.[] | {name, clone_url}')"
for repo in $repos; do
       name=$(echo $repo | jq -r '.name');
  clone_url=$(echo $repo | jq -r '.clone_url')
  echo "$name repo - do you want to clone this repo? [Y/n]"
  read answer
  if [[ $answer == "y" || $answer == "Y" || $answer == "" ]]; then
    git clone $clone_url
  fi
done
