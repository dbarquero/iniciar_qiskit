#!/bin/bash

echo "📁 Creando carpeta de trabajo: ~/jupyter_qiskit"
mkdir -p ~/jupyter_qiskit
cd ~/jupyter_qiskit

echo "🧰 Instalando dependencias del sistema..."
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3-pip python3-venv python3-dev build-essential \
    libatlas-base-dev gfortran git cmake libffi-dev ufw

echo "🛡️ Configurando firewall para abrir puerto 8888 (solo si está habilitado)..."
sudo ufw allow 8888/tcp || true

echo "🐍 Creando entorno virtual..."
python3 -m venv venv
source venv/bin/activate

echo "📦 Actualizando pip y setuptools..."
pip install --upgrade pip setuptools wheel

echo "🔬 Instalando Qiskit completo con Aer y Jupyter..."
pip install qiskit[visualization]
pip install notebook

echo "🌐 Clonando el repositorio de Bronze-Qiskit..."
git clone https://gitlab.com/qworld/bronze-qiskit.git || echo "Ya estaba clonado"

echo "🚀 Iniciando Jupyter Notebook..."
cd ~/jupyter_qiskit/bronze-qiskit
jupyter notebook --no-browser --ip=0.0.0.0 --port=8888
