#!/usr/bin/env bash

if (( $# != 1 ))
then
  echo
  echo "USAGE: Convert a '<folder>/slides.md' file into different presentation mediums"
  echo
  echo "    $0 <folder>"
  exit
fi

mdpath="$1/slides.md"

if [ -f "$mdpath" ]; then
    echo "Converting '$mdpath' and placing results in '$1'."
else 
    echo "$mdpath does not exist."
    exit
fi

for output in pdf pptx image ""; do
  npx @marp-team/marp-cli@latest $mdpath --html --$output
done
