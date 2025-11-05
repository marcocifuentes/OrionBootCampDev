import os
import psycopg2
from flask import Flask
import time

app = Flask(__name__)

def get_db_connection():
    # Pega as variáveis de ambiente que o docker-compose injetou
    host = os.environ.get('DB_HOST')
    dbname = os.environ.get('POSTGRES_DB')
    user = os.environ.get('POSTGRES_USER')
    password = os.environ.get('POSTGRES_PASSWORD')
    port = os.environ.get('DB_PORT')
    
    # Tenta se conectar ao banco. A API pode iniciar antes do banco estar pronto,
    # então usamos um loop de 10 tentativas.
    retries = 10
    while retries > 0:
        try:
            conn = psycopg2.connect(
                host=host,
                database=dbname,
                user=user,
                password=password,
                port=port
            )
            return conn
        except psycopg2.OperationalError:
            retries -= 1
            print(f"Erro de conexão. Tentando novamente... {retries} tentativas restantes.")
            time.sleep(2) # Espera 2 segundos
    return None # Retorna None se falhar

@app.route('/')
def hello():
    conn = get_db_connection()
    if conn:
        conn.close()
        # Critério de sucesso
        return "Conexão com o banco de dados PostgreSQL bem-sucedida!"
    else:
        return "Falha ao conectar ao banco de dados.", 500

# Roda o servidor na porta 5000 (interna do container)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)