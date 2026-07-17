from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def home():
    return f"""
    <h1>Hello from a Docker container!</h1>
    <p>Built by Hani Khamees</p>
    <p>Hostname: {os.uname().nodename}</p>
    <p>Project 4 - CI/CD Pipeline - Automated Deployment v2</p>
    """

@app.route('/health')
def health():
    return {"status": "healthy"}, 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
