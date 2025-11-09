# Orion Bootcamp 2025 - New Rizon
## Marco Cifuentes - Trilha de Programação (Dev)

Este repositório documenta minha jornada e a entrega dos exercícios práticos do **Orion Bootcamp 2025**.

O foco da trilha é a **IA Aplicada**, utilizando ferramentas como **n8n**, **Flowise** e **Strapi**.

---

## 🚀 Exercícios Entregues

### Módulo: Docker

O primeiro módulo foca em containerização com Docker, seguindo o fluxo **Gitflow** e **Conventional Commits** para entrega. Todos os exercícios foram entregues antes do prazo final (05/Nov às 18:00).

* **[Exercício 1: Hello Container](./Docker/Exercício_01/)**
    * Criação de um "Hello World" com Python/Flask, `Dockerfile` e `docker-compose.yml`.

* **[Exercício 2: API + Banco de Dados](./Docker/Exercício_02/)**
    * Orquestração de dois serviços (`api` e `db`) com `docker-compose`.
    * Uso de variáveis de ambiente (`.env`) e volumes (`pg_data`).

* **[Exercício 3: Ambientes Dev/Prod](./Docker/Exercício_03/)**
    * Criação de `multi-stage builds` no `Dockerfile` para otimização.
    * Uso de arquivos `docker-compose.dev.yml` (com live-reload) e `docker-compose.prod.yml`.

* **[Desafio Extra: Stack Completa](./Docker/Desafio_Extra/)**
    * Adição de um terceiro serviço (Adminer).
    * Implementação de rota `/health` na API.
    * Configuração de `healthcheck` no `docker-compose` do banco de dados.

---
### 🛠️ Ambiente de Desenvolvimento (Notas Pessoais)

* **SO:** Fedora 42 (Linux)
* **IDE:** VS Code
* **Container Engine:** Podman (em vez de Docker Desktop).
* **Notas de Configuração (Fedora):** Para resolver erros de `comando não encontrado` e `Permission denied` | python: can't open file '/app/app.py': [Errno 13] Permission denied`], foram necessários os seguintes pacotes de compatibilidade e flags do SELinux:
    ```bash
    sudo dnf install podman-docker podman-compose
    # Adicionar ":z" ao final dos volumes no docker-compose.yml
    # Ex: volumes: - .:/app:z
    ```
    ---

### Módulo: Banco de Dados

[cite_start]O segundo módulo focou em Bancos de Dados Relacionais (SQL/PostgreSQL) e Não Relacionais (NoSQL/MongoDB), subindo o ambiente com Docker Compose e executando scripts [cite: 127-264].

* **(Exercício 1) Banco relacional (SQL Básico)**: [./banco-de-dados/Exercício_01](./banco-de-dados/Exercício_01)
    * Criação de tabelas (`CREATE`), Chaves Primárias/Estrangeiras (`PK`/`FK`) e inserção de dados (`INSERT`).
* **(Exercício 2) Banco relacional (JOINs e Filtros)**: [./banco-de-dados/Exercício_02](./banco-de-dados/Exercício_02)
    * Consultas com `INNER JOIN`, `WHERE`, `UPDATE` e o desafio extra com `LEFT JOIN`.
* **(Exercício 3) Não relacional (CRUD Básico)**: [./banco-de-dados/Exercício_03](./banco-de-dados/Exercício_03)
    * Criação de coleção no MongoDB, `insertOne` e prova de "Schema Flexível".
* **(Exercício 4) Não relacional (Consultas Avançadas)**: [./banco-de-dados/Exercício_04](./banco-de-dados/Exercício_04)
    * Uso de `updateOne` para adicionar dados aninhados e `find` com filtros avançados.