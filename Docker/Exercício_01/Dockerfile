# Usa uma imagem base leve (python:3.11-alpine)
FROM python:3.11-alpine

# Configura o diretório de trabalho
WORKDIR /app

# Copia o arquivo de dependências
COPY requirements.txt .

# Instala as dependências
RUN pip install -r requirements.txt

# Copia o resto do código da aplicação
COPY app.py .

# Define o comando de execução (CMD)
CMD ["python", "app.py"]