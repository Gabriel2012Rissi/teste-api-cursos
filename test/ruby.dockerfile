# Imagem final
FROM ruby:3.1.2-alpine

# Definir o diretório da aplicação
ENV APP_HOME /usr/app/

# Instalar as dependências da imagem
RUN apk add --no-cache alpine-sdk

# Criar o diretório base da aplicação
RUN mkdir -p ${APP_HOME}
WORKDIR ${APP_HOME}

# Copiar os arquivos Gemfile, Gemfile.lock
# para o diretório da imagem de construção
ADD Gemfile* ${APP_HOME}

# Instalar as dependências da imagem de construção
RUN bundle install

# Copiar os arquivos do projeto para o diretório da aplicação
ADD . ${APP_HOME}

# Rodar os testes ao executar o container
CMD [ "bundle", "exec", "cucumber" ]