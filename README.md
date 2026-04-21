# AWP Miner Swarm & Validator - High-Efficiency Deployment

This repository contains a professional-grade, high-concurrency deployment template for AWP (Agentic Web Protocol) mining and validation. It is optimized for hardware with high logical core counts (e.g., Ryzen 9700X) and features 'Ghost-Browser' resource stripping for maximum thread saturation.

## 🚀 Performance Blueprint (High-Yield)
Based on establishment benchmarks, this configuration is optimized for rapid credit score building:

### 1. Key Datasets
- **Primary**: `ds_wikipedia` (Zero CAPTCHAs, high-velocity crawling).
- **Secondary**: `ds_basic_amazon_products_active` (8x reward multiplier).
- *Strategy*: Wikipedia accounts for high task volume, while Amazon targets higher credit rewards.

### 2. Environment Tuning
- **MAX_PARALLEL**: Optimized for **15 threads** per node (180 threads total in a 12-node swarm).
- **Heartbeat**: **2-second** refresh intervals for near-instant task claiming.
- **Stability**: `PYTHONIOENCODING=utf-8` is enforced for Windows host stability.

### 3. Credit & Staking
- **Tier**: Novice (Starting Tier).
- **Stake**: **0 AWP** (Solo Mining mode). This allows for immediate reward generation without initial capital requirement.

## 🛠️ Setup & Security

### 24-Hour Wallet Unlock (CRITICAL)
To ensure continuous mining without signature expiration, always use a **24-hour scope**:
```bash
awp-wallet unlock --scope full --duration 86400
```

### Deployment
Launch the swarm with:
```bash
docker-compose up -d --build
```

## 🔐 Privacy Notice
The `.gitignore` in this repo is configured to prevent `wallets.json` and `.env` from ever being tracked. **Never remove these rules** to ensure your private keys remain secure.

## 👥 Dashboard
Monitor your progress at: [https://minework.net](https://minework.net)
