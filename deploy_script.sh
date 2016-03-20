#!/bin/bash

touch ./deployed
(cd ~/iiet-chat && git pull)
(cd ~/iiet-chat && meteor add rocketchat:hubot && meteor build --server https://chat.dev.i$
(cd ~/server/bundle/programs/server && npm install)

export ROOT_URL=https://chat.dev.iiet.pl/
export MONGO_URL=mongodb://localhost:27017/rocketchat
export PORT=9901
pm2 restart main
