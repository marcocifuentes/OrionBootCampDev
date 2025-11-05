# Exercício 1: Docker - Hello Container

Este projeto é a solução para o **Exercício 1: "Hello Container"** do módulo de Docker do Orion Bootcamp.

## 🎯 Objetivo

Criar uma aplicação "Hello from Docker!" usando Python (Flask) e orquestrá-la com um `Dockerfile` e `docker-compose.yml`.

## 🗂️ O que cada arquivo faz?

* **`app.py`**: Um micro-servidor web em Python (Flask) que responde "Hello from Docker!" na rota principal.
* **`requirements.txt`**: Lista a única dependência do projeto: `Flask`.
* **`Dockerfile`**: A "receita" para construir o contêiner. Ele usa uma imagem base do Python, instala o `Flask` e define o `app.py` como comando de inicialização.
* **`docker-compose.yml`**: O "maestro" que lê o `Dockerfile`, constrói a imagem e a executa, expondo a porta `3000` do contêiner para a porta `3000` do seu computador.

## 🚀 Como Executar

1.  Certifique-se de ter o **Docker Engine** (ou um ambiente compatível, como o Podman) instalado e em execução.
2.  Navegue para o diretório `Docker/Exercício_01`.
3.  Execute o comando:
    ```bash
    docker compose up
    ```
4.  Abra seu navegador e acesse `http://localhost:3000`.

---

## 💡 Nota para Usuários de Fedora (Meu "Eu" do Futuro)

Se você estiver no Fedora e o comando `docker compose up` falhar com `bash: docker: comando não encontrado...`, é porque o Docker não está instalado.

A forma mais rápida de resolver isso no Fedora é usar o **Podman** (que é o padrão do sistema) com os pacotes de compatibilidade:

```bash
# 1. Instala o tradutor "docker" -> "podman"
sudo dnf install podman-docker

# 2. Instala o tradutor "docker compose" -> "podman-compose"
# (Necessário para o erro "looking up compose provider failed")
sudo dnf install podman-compose