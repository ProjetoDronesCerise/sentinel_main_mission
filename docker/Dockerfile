FROM arm64v8/ubuntu:jammy

# Evitar prompts chatos
ENV DEBIAN_FRONTEND=noninteractive

# Atualiza e instala Python 3 + pip
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-setuptools \
    python3-dev \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Diretorio de trabalho dentro do container
WORKDIR /root/app

# Instala o MAVSDK (Python)
RUN python3 -m pip install --no-cache-dir --upgrade pip \
 && python3 -m pip install --no-cache-dir mavsdk

# Copia seus scripts (opcional - mant�m seu arquivo dentro da imagem)
COPY script_main_mission.py ./ 

# Comando padrao: abre um shell interativo
CMD ["/bin/bash"]

