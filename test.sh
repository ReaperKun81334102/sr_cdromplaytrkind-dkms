#!/bin/bash

sudo mkdir -p /usr/src/sr-cdromplaytrkind-0.1
sudo dkms remove -m sr-cdromplaytrkind -v 0.1

sudo rm /usr/src/sr-cdromplaytrkind-0.1/* -rf

sudo cp dkms.conf /usr/src/sr-cdromplaytrkind-0.1/dkms.conf
sudo cp src/* /usr/src/sr-cdromplaytrkind-0.1/ -rf

sudo dkms add -m sr-cdromplaytrkind -v 0.1
sudo dkms build -m sr-cdromplaytrkind -v 0.1
