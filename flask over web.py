#for port open check testing
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run(host='1.1.1.1')
    app.run(host='1.1.1.1', port=8080)
