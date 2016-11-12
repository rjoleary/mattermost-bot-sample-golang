#!/bin/bash

# Do not run this script in this directory! Run in root of the platform repo. After this script runs successfully, run `make run` to start MatterBot.

# This script creates a matterbot user for the team called "sample".
#TODO: matterbot is a reserver username
#TODO: secure password handling of matterbot's password
TEAM=${1-sample}
go run mattermost.go -create_user -team_name="$TEAM" -email="matterbot@example.com" -password="password123" -username="matterbot2"
