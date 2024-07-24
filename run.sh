source /data/secrets

if [ -z "$DOCUMENTDB" ]; then
  echo Environment Variable DOCUMENTDB is mising
  exit 1
fi

if [ -z "$REDIS_HOST" ]; then
  echo Environment Variable REDIS_HOST is mising
  exit 1
fi

if [ -z "$MONGO_URL" ]; then
  echo Environment Variable MONGO_URL is mising
  exit 1
fi

node  /app/server.js

