#!/bin/bash

##awk '/^MemTotal:/ {total=$2} /^MemFree:/ {free=$2} /^Buffers:/ {buffers=$2} /^Cached:/ {cache=$2} END {used=total-free-buffers-cache; printf "%d\n", used/1024}' /proc/meminfo


awk '/^MemTotal:/ {total=$2} /^MemFree:/ {free=$2} /^Buffers:/ {buffers=$2} /^Cached:/ {cache=$2} END {used=total-free-buffers-cache; printf "%d MB\n", used/1024}'

