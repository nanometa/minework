# AWP Miner Swarm & Validator - High-Efficiency Deployment

This repository contains a professional-grade, high-concurrency deployment template for AWP (Agentic Web Protocol) mining and validation. It is optimized for hardware with high logical core counts (e.g., Ryzen 9700X) and features 'Ghost-Browser' resource stripping for maximum thread saturation.

## 🚀 Speed Features
- **180 Parallel Threads**: Configured for 12 nodes with 15 parallel tasks each.
- **Ghost-Browser Mode**: Non-essential assets (CSS, Images, Fonts) are blocked to reduce RAM footprint by 50%.
- **Turbo Polling**: Heartbeat interval set to 2 seconds for near-instant task claims.
- **1:1 Pinning**: Pre-configured for logical core isolation (Docker `cpuset`).

## 🛠️ Setup Instructions

### 1. Prerequisites
- Docker & Docker Compose installed.
- NVIDIA NIM API Key (or OpenClaw gateway).
- AWP Wallet addresses with 'Novice' or 'Normal' tier credits.

### 2. Configuration
1. Clone this repository.
2. Copy `.env.example` to `.env`.
3. Fill in your `NVIDIA_API_KEY`.
4. Enter your 12-word recovery phrases into the `MINER_MNEMONIC_X` variables.

### 3. Deploy
Launch the swarm with:
```bash
docker-compose up -d --build
```

## 🔐 Privacy Notice
The `.gitignore` in this repo is configured to prevent `wallets.json` and `.env` from ever being tracked. **Never remove these rules** to ensure your private keys remain secure.

## 👥 Dashboard
Monitor your progress at: [https://minework.net](https://minework.net)
