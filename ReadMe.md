# Automação de Testes em API com HTTParty e Cucumber
![Imagem capa](https://auditeste.com.br/wp-content/uploads/2020/01/beneficios_testes_automatizados.jpg)

## Sobre o Projeto
Consiste em um projeto simples visando demonstrar a utilização do HTTParty para realização de testes automatizados dentro do processo do BDD com o auxílio do Cucumber :cucumber: no mapeamento dos requisitos.

## Para utilizar

### Usando o Vagrant (opcional)

1. Para usar o [Vagrant](https://www.vagrantup.com) é necessário primeiramente efetuar a instalação da ferramenta.

```
$ wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
$ echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
$ sudo apt update && sudo apt install vagrant
```

2. Para criar a máquina virtual, use o comando:

```
$ vagrant up
```

3. Para provisionar a máquina virtual, após eventuais alterações, use o comando:

```
$ vagrant provision
```

4. Para acessar a sua máquina virtual via SSH, use:

```
$ vagrant ssh
```

### Compose

> [Compose](https://docs.docker.com/compose/) é uma ferramenta para definir e executar aplicações docker multi-container. Com o [Compose](https://docs.docker.com/compose/), você usa arquivos YAML para configurar os serviços da sua aplicações. Então, com um único comando, você cria e inicia todos os serviços da sua configuração. Para aprender mais sobre todas as funcionalidades do [Compose](https://docs.docker.com/compose/), veja a [lista de funcionalidades](https://docs.docker.com/compose/#features).

1. Para iniciar o projeto usando o [Compose](https://docs.docker.com/compose/), use os comandos:

```
# Construindo as imagens Docker
$ docker-compose build

# Instalando as dependências localmente e executando
$ docker-compose run --rm api yarn install
$ docker-compose up -d api

# Rodando os testes
$ docker-compose run --rm test
```

2. Se quiser testar o acesso Ã  API, acesse:
[http://localhost:3000](http://localhost:3000)

3. Para criar a imagem da API e enviá-la para o [Docker Hub](https://hub.docker.com/), use os comandos:

```
# Logando-se no Docker
$ docker login

# Taggeando a imagem
$ docker build -t nome_de_usuario_do_docker_hub/meu-projeto-gitops-api:latest ./api

# Enviando a imagem para o Docker Hub
$ docker push nome_de_usuario_do_docker_hub/meu-projeto-gitops-api:latest
```

4. Caso queira inserir dados na API, utilize o [Postman](https://www.postman.com/downloads/).
