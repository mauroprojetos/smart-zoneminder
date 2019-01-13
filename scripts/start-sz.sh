#!/bin/bash
# Script to start smart-zoneminder.
# Copyright (c) 2018, 2019 Lindo St. Angel

# Start object detection server.
/home/lindo/.virtualenvs/od/bin/python3 \
/home/lindo/develop/smart-zoneminder/obj-detect/obj_detect_server.py > /dev/null &

/bin/sleep 5

# Start alarm frame uploder.
/usr/local/bin/node \
/home/lindo/develop/smart-zoneminder/zm-s3-upload/zm-s3-upload.js > /dev/null &