FROM node:18.12-alpine

# Setar o diretório do projeto
ENV APP_DIR /usr/app

# Criar o diretório da aplicação
RUN mkdir -p ${APP_DIR}/
WORKDIR ${APP_DIR}/

# Copiar os arquivos package.json, package-lock.json e yarn.lock
# para o diretório do projeto
ADD package*.json ${APP_DIR}/
ADD yarn.lock ${APP_DIR}/

# Instalar as dependências
RUN yarn install --production=true --frozen-lockfile && \
    yarn cache clean

# Copiar arquivos necessários para o funcionamento da aplicação
ADD . ${APP_DIR}/

# Executar na porta 1337 (padrão)
EXPOSE ${PORT}

# Iniciar a aplicação no container
CMD ["yarn", "start", "--host", "0.0.0.0"]