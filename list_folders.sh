#!/bin/bash
for chain in *
do
  cd "${chain}"
  if [ -d "assets" ]
  then
    echo "loading ${chain}"
    cd "assets"
    list="["
    for address in *
    do
      list="${list}\"${address}\","
    done
    list="${list%?}]"
    echo $list > ../tokens.json
    cd ..
  else
    echo "loading ${chain}"
    echo "[]" > tokens.json
  fi
  cd ..
done
