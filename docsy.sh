#!/usr/bin/env bash

if [[ $1 = "serve" || $1 = "dev" ]]; then
  docker run --rm \
     --name slate \
     -p 4567:4567 \
     -v $(pwd)/config.rb:/srv/slate/config.rb \
     -v $(pwd)/source:/srv/slate/source slatedocs/slate \
     serve
elif [[ $1 = "build" ]]; then
  docker run --rm \
     --name slate \
     -v $(pwd)/config.rb:/srv/slate/config.rb \
     -v $(pwd)/build:/srv/slate/build \
     -v $(pwd)/source:/srv/slate/source \
     slatedocs/slate \
     build
elif [[ $1 = "deploy" ]]; then
  echo 'Building the static files'
  docker run --rm \
     --name slate \
     -v $(pwd)/config.rb:/srv/slate/config.rb \
     -v $(pwd)/build:/srv/slate/build \
     -v $(pwd)/source:/srv/slate/source \
     slatedocs/slate \
     build
  echo 'Deploying and publishing project on github'
   ./deploy.sh --push-only
fi
