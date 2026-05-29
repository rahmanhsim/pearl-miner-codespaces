#!/bin/bash
set -e

echo "🪙 Pearl Miner Setup"
echo "===================="

# Check GPU
if command -v nvidia-smi &> /dev/null; then
    echo "✅ GPU found:"
    nvidia-smi --query-gpu=name,memory.total --format=csv,noheader
else
    echo "⚠️  No NVIDIA GPU detected"
fi

# Download miner
echo ""
echo "📥 Downloading Pearl Miner..."
curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
chmod +x pearl-miner

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit WALLET in start-mining.sh with your PRL address"
echo "2. Run: ./start-mining.sh"
