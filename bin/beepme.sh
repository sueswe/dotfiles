#!/bin/bash

_alarm() {
  (\speaker-test --frequency $1 --test sine) &
  pid=$!
  \sleep 0.${2}s
  \kill -9 $pid
}

_alarm $1 $2
