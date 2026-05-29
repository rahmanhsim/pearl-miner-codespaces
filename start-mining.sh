#!/bin/bash
set -e

WALLET="prl1plsv9neavdr47k83l2lglufuyhk8rfcqtmm4xr2gcdp6nh82futuswcfka6"
WORKER="rahmanhsim"
POOL=${1:-"129.226.55.135:9000"}  # Default Asia, can change to US: 84.32.220.219:9000

echo "Starting Pearl Miner..."
echo "Wallet: $WALLET"
echo "Worker: $WORKER"
echo "Pool: $POOL"
echo ""

# Download miner if not exists
if [ ! -f pearl-miner ]; then
    echo "Downloading Pearl Miner..."
    curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
    chmod +x pearl-miner
fi

echo "Starting mine..."
./pearl-miner --host $POOL --user $WALLET --worker $WORKER
