FROM debian:bullseye-slim

RUN apt update && apt upgrade -y
RUN apt install python3 -y
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN apt install python3-pip -y 
RUN python --version
RUN pip3 --version
RUN pip install --upgrade pip
RUN pip install setuptools==67.7.2
RUN pip install setuptools bandit black codespell flake8 isort mypy pytest pyupgrade safety
RUN pip freeze > requirements.txt && pip install -r requirements.txt --upgrade
