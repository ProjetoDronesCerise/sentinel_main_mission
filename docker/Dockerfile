FROM arm64v8/ubuntu:bionic

# Evitar prompts chatos
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza e instala Python 3 + pip
RUN apt-get update && apt-get install -y \
    python3 python3-pip python3-setuptools python3-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Diretório de trabalho dentro do container
WORKDIR /root/app

# Instala o MAVSDK (Python)
RUN python3 -m pip install --no-cache-dir --upgrade pip \
 && python3 -m pip install --no-cache-dir mavsdk

# Copia seus scripts para dentro do container
# (ajusta o caminho conforme seus arquivos)
COPY connection_test.py ./ 

# Se você tiver mais scripts/pacotes:
# COPY . .

# Comando padrão do container
CMD ["python3", "connection_test.py"]
