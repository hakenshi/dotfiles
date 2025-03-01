#!/bin/bash

query_output=$(swww query)

image_path=$(echo "$query_output" | grep -oP 'image: \K.*')

wal -i $image_path -n

