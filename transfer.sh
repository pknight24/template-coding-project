#!/bin/bash

REMOTE_HOST=""
REMOTE_PATH=""
LOCAL_PATH="."

rsync -vra -e ssh $REMOTE_HOST:$REMOTE_PATH $LOCAL_PATH

