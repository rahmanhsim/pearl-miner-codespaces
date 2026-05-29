#!/bin/bash
set -e

# ============================================
# 🪙 Pearl Miner - GitHub Codespaces
# ============================================
# Edit wallet and worker variables below
# ============================================

# ⚠️ EDIT THESE VALUES
WALLET="YOUR_PRL_WALLET_ADDRESS"
WORKER="your-worker-name"

# Pool servers (choose one)
# Asia:  129.226.55.135:9000
# US:    84.32.220.219:9000
# EU:    (check pearlhash.xyz)
POOL="129.226.55.135:9000"

# ============================================
# DO NOT EDIT BELOW UNLESS YOU KNOW WHAT YOU'RE DOING
# ============================================

echo "============================================"
echo "🪙 Pearl Miner"
echo "============================================"
echo "Wallet: $WALLET"
echo "Worker: $WORKER"
echo "Pool:   $POOL"
echo "============================================"

# Check if wallet is set
if [ "$WALLET" = "YOUR_PRL_WALLET_ADDRESS" ]; then
    echo "❌ ERROR: Please edit start-mining.sh and set your wallet address!"
    exit 1
fi

# Download miner if not exists
if [ ! -f pearl-miner ]; then
    echo "📥 Downloading Pearl Miner..."
    curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
    chmod +x pearl-miner
    echo "✅ Download complete"
fi

# Check GPU
if command -v nvidia-smi &> /dev/null; then
    echo "🎮 GPU detected:"
    nvidia-smi --query-gpu=name,memory.total --format=csv,noheader
else
    echo "⚠️  No GPU detected - CPU mining will be slow/0 H/s"
fi

echo ""
echo "🚀 Starting miner..."
echo "============================================"

# Run miner
./pearl-miner --host $POOL --user $WALLET --worker $WORKER
