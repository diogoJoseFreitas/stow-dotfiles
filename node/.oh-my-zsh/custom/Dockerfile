# Etapa 1: imagem base com Node.js
FROM node:alpine

# Diretório de trabalho dentro do container
WORKDIR /app

# Instala o TypeScript globalmente
RUN npm install -g typescript
# Compila o código TypeScript (opcional, se não usar ts-node)
ENTRYPOINT ["tsc"]
