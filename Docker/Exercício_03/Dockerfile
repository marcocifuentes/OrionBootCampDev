# ----- Estágio 1: "Builder" -----
# Este estágio é pesado, mas tem as ferramentas para instalar dependências
FROM python:3.11-alpine AS builder

WORKDIR /app

# Instala as dependências do sistema necessárias para compilar psycopg2
RUN apk add --no-cache build-base postgresql-dev

# Instala as dependências do Python
COPY requirements.txt .
RUN pip wheel --no-cache-dir --wheel-dir=/app/wheels -r requirements.txt
#RUN pip install -r requirements.txt

# ----- Estágio 2: "Final" -----
# Esta é a imagem final, leve, para produção
FROM python:3.11-alpine AS final

WORKDIR /app

# Instala apenas as dependências de *runtime* do Postgres
RUN apk add --no-cache libpq

# Copia as dependências "pré-compiladas" do estágio builder
COPY --from=builder /app/wheels /app/wheels
RUN pip install --no-cache-dir --no-index --find-links=/app/wheels /app/wheels/*

# Copia o código da aplicação
COPY app.py .

# Define o comando de execução (CMD)
CMD ["python", "app.py"]