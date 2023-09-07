#!/bin/bash

hoge="hoge"
while [ "$hoge" != "COMPLETED" ]; do
  if [ "$hoge" == "hoge" ]; then
    echo "hogehoge"
  fi
  hoge="COMPLETED"
done

hoge="hoge"
while [ "$hoge" != "COMPLETED" ]; do
  if [ "$hoge" = "hoge" ]; then
    echo "hogehoge"
  fi
  hoge="COMPLETED"
done

hoge="hoge"
while [ $hoge != "COMPLETED" ]; do
  if [ $hoge == "hoge" ]; then
    echo "hogehoge"
  fi
  hoge="COMPLETED"
done

hoge="hoge"
while [ $hoge != "COMPLETED" ]; do
  if [ $hoge = "hoge" ]; then
    echo "hogehoge"
  fi
  hoge="COMPLETED"
done
