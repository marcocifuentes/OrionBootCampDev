# Usando Flask, um micro-framework web simples em Python
from flask import Flask
app = Flask(__name__)

# Define a rota principal
@app.route('/')
def hello():
    # Retorna a mensagem pedida no exercício
    return "Hello from Docker!"

# Roda o servidor na porta 3000, acessível por qualquer IP (0.0.0.0)
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)