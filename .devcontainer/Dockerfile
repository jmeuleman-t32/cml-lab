FROM mcr.microsoft.com/devcontainers/python:3.11

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       openssh-client \
       sshpass \
       git \
       curl \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir ansible ansible-lint

RUN ansible-galaxy collection install cisco.nxos ansible.netcommon