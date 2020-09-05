# Gym Manager

<p>Sistema web de gerenciamento de academia.</p>

<p>
  <img src="https://img.shields.io/badge/made%20by-RAFAEL%20MARTINS-7159c1?style=flat-square">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/martins-rafael/gym-manager?color=7159c1&style=flat-square">
  <img alt="GitHub Top Language" src="https://img.shields.io/github/languages/top/martins-rafael/gym-manager?color=7159c1&style=flat-square">
  <a href="https://opensource.org/licenses/MIT">
    <img alt="License" src="https://img.shields.io/badge/license-MIT-7159c1?style=flat-square">
  </a>
  <a href="https://github.com/martins-rafael/gym-manager/commits/master">
    <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/martins-rafael/gym-manager?color=7159c1&style=flat-square">
  </a>
</p>

<img align="right" src=".github/dumbbell.png?raw=true" width="35%">

## Tópicos 

[Sobre o Gym Manager](#sobre-o-gym-manager)

[Funcionalidades](#funcionalidades)

[Tecnologias](#tecnologias)

[Instalação e uso](#instalação-e-uso)

[Licença](#licença)

<br>

## Sobre o Gym Manager

O Gym Manager é uma aplicação web de gerenciamento de academia, responsável pelo controle de instrutores e membros. Desenvolvido durante o bootcamp [LaunchBase](https://rocketseat.com.br/launchbase) da [Rocketseat](https://rocketseat.com.br/). 

<p align="center">
  <img src=".github/screenshot.png" alt="página principal">
</p>

<p align="center">
  <img src=".github/demo.gif" alt="demonstração">
</p>

<br>

## Funcionalidades

- [X] Criar, visualizar, editar e apagar instrutores e membros.
- [X] Filtrar instrutores e membros.
- [X] Paginação.
- [X] Páginas dinâmicas com Nunjucks.
- [X] Banco de dados PostgreSQL.

<br>

## Tecnologias

As seguintes tecnologias foram utilizadas no desenvolvimento do projeto:

- [HTML](https://devdocs.io/html/)
- [CSS](https://devdocs.io/css/)
- [Javascript](https://devdocs.io/javascript/)
- [Node](https://nodejs.org/en/)
- [Express](https://expressjs.com/)
- [Nunjucks](https://mozilla.github.io/nunjucks/)
- [PostgreSQL](https://www.postgresql.org/)

<br>

## Instalação e uso

Para rodar a aplicação, você precisa ter instalado em sua máquina o [Node](https://nodejs.org/en/) e o [Postgres](https://www.postgresql.org/).

Siga os passos abaixo:
```bash
# Abra um terminal e copie este repositório com o comando
$ git clone https://github.com/martins-rafael/gym-manager.git
# ou use a opção de download.
    
# Entre na pasta com 
$ cd gym-manager

# Instale as dependências
$ npm install
    
# Crie e importe o banco de dados
$ psql -U postgres -c "CREATE DATABASE gymmanager"
$ psql -U postgres -d gymmanager <gymmanager.sql
# Você também pode criar e importar manualmente o banco de dados usando o Postbird ou pgAdmin.
    
# Conexão com o banco de dados: edite o arquivo db.js dentro da pasta src/config com o seu user e password do Postgres.

# Rode a aplicação
$ npm start
```

<br>

## Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](/LICENSE) para mais detalhes.

---

Feito com :purple_heart: by [Rafael Martins](https://github.com/martins-rafael)
