#!/usr/bin/env bash

cmd="$@"

time elixir code/sort.ex < data/input > data/output

exec $cmd
