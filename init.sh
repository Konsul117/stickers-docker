#!/usr/bin/env bash

if [ -d src ]; then
  echo "Проект уже развёрнут"
  exit 1
fi

mkdir src
cd src
mkdir backend
cd backend
git clone git@github.com:Konsul117/stickers-server.git
mv stickers-server/* ./
rm -rf ./stickers-server
cd ..
mkdir frontend
cd frontend
git clone https://github.com/Konsul117/stickers
mv stickers/* ./
rm -rf ./stickers
cd ../..
docker-compose -f docker-compose-build.yml up
