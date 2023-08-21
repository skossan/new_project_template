import os

def install_backend():
    backend_dir = os.path.join(os.path.dirname(__file__), '..', 'server')
    os.chdir(backend_dir)
    os.system('pip install -r requirements.txt')

def install_frontend():
    frontend_dir = os.path.join(os.path.dirname(__file__), '..', 'client')
    os.chdir(frontend_dir)
    os.system('npm i')

if __name__ == "__main__":
    install_backend()
    install_frontend()