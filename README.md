# 🪙 Pearl Miner

Free GPU mining setup for [Pearl (PRL)](https://pearlhash.xyz) — a proof-of-useful-work blockchain for AI compute.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Platform](https://img.shields.io/badge/platform-GPU%20Cloud%20%7C%20Colab%20%7C%20Kaggle-green.svg)

## Features

- 🚀 Works on Google Colab (T4 GPU - FREE)
- 🚀 Works on Kaggle (T4 x2 GPU - FREE)  
- 🚀 Works on Modal (H100/A100 - paid)
- 🔒 No mining pool fees

## Getting Started

### Prerequisites

- A Pearl (PRL) wallet address → [Get from pearlhash.xyz](https://pearlhash.xyz)
- GPU-enabled cloud environment (see options below)

### Quick Setup

```bash
# 1. Clone this repo
git clone https://github.com/rahmanhsim/pearl-miner-codespaces.git
cd pearl-miner-codespaces

# 2. Run setup
./setup.sh

# 3. Edit your wallet in start-mining.sh
nano start-mining.sh

# 4. Start mining
./start-mining.sh
```

### GPU Options

| Platform | GPU | Cost | Notes |
|----------|-----|------|-------|
| Google Colab | T4 15GB | FREE | Restart every ~2 hours |
| Kaggle | T4 x2 32GB | FREE | 30 hrs/week limit |
| Modal | H100/A100 | $0.50-3/hr | $30 free for new accounts |

### Pool Servers

| Region | Address |
|--------|---------|
| Asia (Singapore) | `129.226.55.135:9000` |
| US (Chicago) | `84.32.220.219:9000` |
| EU | Check [pearlhash.xyz](https://pearlhash.xyz) |

## Wallet Setup

1. Register at [pearlhash.xyz](https://pearlhash.xyz)
2. Get your PRL wallet address
3. Edit `start-mining.sh`:
   ```bash
   WALLET="prl1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
   WORKER="your-worker-name"
   ```

## Earnings

- Check your stats: [https://the.hiveos.farm](https://the.hiveos.farm)
- PRL price: [Coingecko](https://www.coingecko.com/en/coins/pearl)

## Disclaimer

Mining cryptocurrency may consume significant GPU resources and electricity. Use responsibly and at your own risk.

## License

MIT
