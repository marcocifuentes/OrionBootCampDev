# Exercício 2: Docker - API + Banco de Dados

Este projeto é a solução para o **Exercício 2: "Compose com API + Banco de Dados"** do módulo de Docker do Orion Bootcamp.

## 🎯 Objetivo

Conectar múltiplos contêineres (`API` + `DB`) usando `docker-compose` e variáveis de ambiente.

A stack é composta por:
* **`api`**: Um servidor Python (Flask) que se conecta ao banco.
* **`db`**: Um contêiner oficial do PostgreSQL.

## 🚀 Como Executar

1.  Certifique-se de ter o **Docker Engine** (ou Podman) instalado e em execução.
2.  Navegue para o diretório `Docker/Exercício_02`.
3.  Execute o comando:
    ```bash
    docker compose up
    ```
4.  O processo pode demorar um pouco na primeira vez, pois o `db` precisa iniciar.
5.  Abra seu navegador e acesse `http://localhost:5001`.
6.  Você deve ver a mensagem: "Conexão com o banco de dados PostgreSQL bem-sucedida!"
7.  O volume `pg_data` garante que os dados do banco não sejam perdidos ao parar o contêiner.