alias lzd=$HOME/.local/bin/lazydocker

alias lscontainers='docker ps --all --format "{{.Names}}"'

alias dockerps='docker ps --all --format "{{.Names}} | {{.Ports}}"'
alias dockerstart='docker start $(lscontainers | fzf)'

used_ports() {
  docker ps -a --format '{{.Names}} -> {{.Ports}}' | grep -oE '[0-9]+->' | sed 's/->//' | sort -n | uniq
}

find_free_sql_port() {
  used=$(used_ports)
  for port in {1433..1500}; do
  if ! echo "$used" | grep -q "^$port$"; then
    echo "$port"
    return
  fi
  done
  echo "❌ Nenhuma porta disponível entre 1433 e 1500" >&2
  return 1
}


sqlcontainer(){
  if [ -z "$1" ]; then
    echo "⚠️  Use: sqlcontainer <nome>"
    return 1
  fi

  container="sql-$1"
  PORT=$(find_free_sql_port)
  volume="${container}_data"

  # Verifica se o container já existe
  if docker inspect "$container" &>/dev/null; then
    echo "❌ Container '$container' já existe. Cancelando."
    echo "$container"
    return 0
  fi

  echo "📦 Criando volume: $volume"
  docker volume create $volume

  echo "🚀 Subindo container '$container' na porta $PORT..."
  docker run -d \
  --name $container\
  -e SA_PASSWORD=free_123 \
  -e ACCEPT_EULA=Y \
  -p $PORT:1433 \
  -v $volume:/var/opt/mssql \
  mcr.microsoft.com/mssql/server:latest
  echo "✅ Container '$container' criado com sucesso!"
  echo "   Volume: $volume"
  echo "   Porta: $PORT"
  echo "$container"
}

restore_bkp(){
  CONTAINER_NAME=$1
  BACKUP_LOCAL=$2

  SQLCMD_PATH="/opt/mssql-tools18/bin/sqlcmd"
  SA_PASSWORD="free_123"
  BACKUP_FILE_NAME="$(basename "$BACKUP_LOCAL")"
  CONTAINER_BKP_DIR="/var/opt/mssql/backup"
  BACKUP_CONTAINER_PATH="$CONTAINER_BKP_DIR/$BACKUP_FILE_NAME"



  # === 1. Criar pasta de backup no contêiner ===
  docker exec -it $CONTAINER_NAME mkdir -p $CONTAINER_BKP_DIR

  # === 2. Copiar backup para dentro do contêiner ===
  docker cp "$BACKUP_LOCAL" "$CONTAINER_NAME:$CONTAINER_BKP_DIR"

  # === 3. Executar RESTORE FILELISTONLY ===
  docker exec -i $CONTAINER_NAME $SQLCMD_PATH -S localhost -U SA -P "$SA_PASSWORD" -C <<EOF
  RESTORE FILELISTONLY FROM DISK = '$BACKUP_CONTAINER_PATH';
  GO
EOF

  # === 4. Executar RESTORE DATABASE ===
  docker exec -i $CONTAINER_NAME $SQLCMD_PATH -S localhost -U SA -P "$SA_PASSWORD" -C <<EOF
  RESTORE DATABASE ads
  FROM DISK = '/var/opt/mssql/backup/$BACKUP_FILE_NAME'
  WITH MOVE 'ads_Data' TO '/var/opt/mssql/data/ads.mdf',
       MOVE 'ads_Log' TO '/var/opt/mssql/data/ads_log.ldf',
       REPLACE;
  GO
EOF
}
