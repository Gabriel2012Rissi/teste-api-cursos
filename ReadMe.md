# Automação de Testes em API com HTTParty e Cucumber
![Imagem capa](https://auditeste.com.br/wp-content/uploads/2020/01/beneficios_testes_automatizados.jpg)

## Sobre o Projeto
Consiste em um projeto simples visando demonstrar a utilização do HTTParty para realização de testes automatizados dentro do processo do BDD com o auxílio do Cucumber no mapeamento dos requisitos.

## Para utilizar

### json-server
comando para instalação do json-server

#### Linux
``` shell
$ sudo apt-get install npm
$ npm install json-server
```
#### Windows
Baixe o instalador : http://nodejs.org/download/
1. Após baixar, instale o aplicativo
1. Depois execute o comando no prompt
```shell
c:\ npm install json-server
```
#### Executando o json-server
1. acesse a pasta **[ json-server ]** do projeto
1. execute o comando:
    ```shell
    $ node_modules/.bin/json-server --watch db.json
    ```
1. Abrir no navegador o endereço
    *  http://localhost:3000

### Cucumber :cucumber:

#### Pré-requisitos

* Possuir ruby instalado **> 2.0.0**
* https://www.ruby-lang.org/pt/downloads/

#### Instalando dependências do Ruby
* instalar a gem bundler 
```shell
$ gem install bundler
```
* Após instalação, na raiz do projeto, rodar o comando:
```shell
$ bundle install
```
#### Executando o cucumber
1. Acesse a parta **[ API ]**
1. Execute o comando:
```shell
$ cucumber
```