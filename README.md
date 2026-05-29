# 🪙 Pearl Miner - GitHub Codespaces

Free GPU mining with GitHub Codespaces.

## ⚠️ WARNING
- GitHub/Azure ToS prohibit crypto mining
- Your account may be banned
- Use at your own risk

## Quick Start

1. Fork this repo
2. Open in Codespaces (button in GitHub)
3. Select machine with GPU
4. Run:
```bash
chmod +x pearl-miner
./pearl-miner --host 129.226.55.135:9000 --user YOUR_WALLET --worker YOUR_WORKER
```

## Available Pools

| Region | Host |
|--------|------|
| Asia (Singapore) | 129.226.55.135:9000 |
| US (Chicago) | 84.32.220.219:9000 |
| EU | 84.32.220.219:9000 |

## Download Binary

```bash
curl -L https://pearlhash.xyz/downloads/pearl-miner-v8 -o pearl-miner
chmod +x pearl-miner
```

## Current Earnings (Example)

- 8 workers on Colab: ~80 TH/s
- PRL/day: ~2.65 (~$0.06 at $0.023/PRL)
- Not worth it unless PRL price pumps

