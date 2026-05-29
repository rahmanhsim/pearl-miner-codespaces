#!/bin/bash
set -e

WALLET=${1:-"prl1plsv9neavdr47k83l2lglufuyhk8rfcqtmm4xr2gcdp6nh82futuswcfka6"}
WORKER=${2:-"codespaces-miner"}
POOL=${3:-"129.226.55.135:9000"}

echo "Starting Pearl Miner..."
echo "Wallet: $WALLET"
echo "Worker: $WORKER"
echo "Pool: $POOL"

# Download miner if not exists
if [ ! -f pearl-miner ]; then
    echo "Downloading Pearl Miner..."
    curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
    chmod +x pearl-miner
fi

# Start mining
./pearl-miner --host $POOL --user $WALLET --worker $WORKER
