# Desafio Extra: Aplicação Completa (API + DB + Admin)

Este projeto é a solução para o **"Desafio Extra - Aplicação Completa"** do módulo de Docker do Orion Bootcamp.

## 🎯 Objetivo

Orquestrar uma stack completa com três serviços:
1.  **API** (Python/Flask) com rota `/health`.
2.  **Banco de dados** (PostgreSQL) com `healthcheck`.
3.  **Interface de Administração** (Adminer).

## 🚀 Como Executar

1.  Certifique-se de ter o **Docker Engine** (ou Podman) instalado.
2.  Navegue para o diretório `Docker/Desafio_Extra`.
3.  Execute o comando:
    ```bash
    docker compose up --build
    ```

## 🧪 Como Testar

Após os 3 containers subirem:

1.  **API (Conexão):** Acesse `http://localhost:5001`
    * *Resultado esperado:* "Conexão com o banco de dados PostgreSQL bem-sucedida!"
2.  **API (Health):** Acesse `http://localhost:5001/health`
    * *Resultado esperado:* `{"status": "ok"}`
3.  **Adminer (Interface):** Acesse `http://localhost:8080`
    * *Sistema:* PostgreSQL
    * *Servidor:* `db`
    * *Usuário:* `admin`
    * *Senha:* `admin123`
    * *Banco de dados:* `bootcamp_db`