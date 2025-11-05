# Exercício 3: Docker - Múltiplos Ambientes (Dev/Prod)

Este projeto é a solução para o **Exercício 3: "Boas Práticas + Múltiplos Ambientes"** do módulo de Docker do Orion Bootcamp.

## 🎯 Objetivo

Configurar ambientes de desenvolvimento (`dev`) e produção (`prod`) para a API do Exercício 2, usando `multi-stage builds` no `Dockerfile` e arquivos `docker-compose` separados.

## 🚀 Como Executar

1.  Certifique-se de ter o **Docker Engine** (ou Podman) instalado.
2.  Navegue para o diretório `Docker/Exercício_03`.

### Ambiente de Desenvolvimento (com Live-Reload)

```bash
# Sobe o container em modo "dev", com volumes
docker compose -f docker-compose.dev.yml up --build