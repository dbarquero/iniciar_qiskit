# iniciar_qiskit — Qiskit + Bronze-Qiskit Quick Installer

[![Qiskit](https://img.shields.io/badge/Qiskit-Latest-blueviolet?logo=qiskit)](https://qiskit.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu-orange?logo=ubuntu)](https://ubuntu.com/)

This repository contains a **Bash script** that automates the installation of **Qiskit** (including Aer simulator and visualization tools) and **Jupyter Notebook**, and clones the **[Bronze-Qiskit](https://gitlab.com/qworld/bronze-qiskit)** repository with practical exercises.

---

##  Features
-  **Creates** a working directory `~/jupyter_qiskit`
-  **Installs** Python dependencies and scientific libraries
-  **Opens firewall** for port `8888` (if `ufw` is enabled)
-  **Creates** a Python virtual environment
-  **Installs** Qiskit with `qiskit[visualization]`
-  **Installs** Jupyter Notebook
-  **Clones** the Bronze-Qiskit repo
-  **Launches** Jupyter Notebook ready to use

---

## Installation
```bash
git clone https://github.com/dbarquero/iniciar_qiskit.git
cd iniciar_qiskit
chmod +x iniciar_qiskit.sh
./iniciar_qiskit.sh
