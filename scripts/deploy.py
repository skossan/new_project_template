import os


def build():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    docker_dir = os.path.join(current_dir, "..", "docker")
    os.chdir(docker_dir)
    os.system("docker-compose build")


def push_to_dockerhub():
    current_dir = os.path.dirname(os.path.abspath(__file__))
    docker_dir = os.path.join(current_dir, "..", "docker")
    os.chdir(docker_dir)
    os.system("docker-compose push")


if __name__ == "__main__":
    build()
    push_to_dockerhub()
