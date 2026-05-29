#!/bin/bash
set -e

echo "Setting up environment..."

# Check GPU
if command -v nvidia-smi &> /dev/null; then
    echo "NVIDIA GPU detected:"
    nvidia-smi
else
    echo "No NVIDIA GPU found. Codespaces may not have GPU enabled."
    echo "Go to: GitHub repo -> Codespaces -> Create codespace -> Machine type -> Select GPU"
fi

# Download miner
curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
chmod +x pearl-miner

echo "Setup complete! Run ./start-mining.sh [wallet] [worker] [pool]"
