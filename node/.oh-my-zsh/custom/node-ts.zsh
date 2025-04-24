function tsc() {
  docker run --rm \
    -v "$PWD":/app \
    -w /app \
    ts-compiler:v1 "$@"
}

function node()
{
    docker run --rm \
    -v "$PWD":/app \
    -w /app \
    node:alpine \
    node "$@"
}

function npm()
{
    docker run --rm \
    -v "$PWD":/app \
    -w /app \
    node:alpine \
    npm "$@"
}

function tsrun()
{
  tsc && node dist/index.js
}
