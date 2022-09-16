#!/usr/bin/env bash

if (( $# != 1 ))
then
  echo ""
  echo "USAGE: Create a '<folder>/slides.md' file to make a new presentation"
  echo ""
  echo "    $0 <folder>"
  exit
fi

mkdir -p $1

mdpath="$1/slides.md"

if [ ! -f "$mdpath" ]; then

  cat <<EOT >> $mdpath
---
marp: true
theme: gaia
paginate: true
backgroundColor: #fff
backgroundImage: url('https://marp.app/assets/hero-background.svg')
---

# My New Presentation

---

- I am a presentation
- Look at me!
- Give me your attention

--- 

<!-- _class: lead -->

#### Thanks for listening!

# Any Questions?

EOT

fi

echo
echo "Ensured $mdpath exists and is a basic MARP presentation."
echo
echo "To generate presentation mediums, run the following"
echo
echo "    ./bin/export-slides.sh '$1'"