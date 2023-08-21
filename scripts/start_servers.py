import subprocess
import os

def execute_bash_script():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    subprocess.call(f'{current_dir}/start_servers.sh', shell=True)

if __name__ == "__main__":
    execute_bash_script()