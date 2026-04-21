#!/bin/bash
# Fernando Miner Swarm Entrypoint - GHOST-BROWSER ULTRA-EFFICIENCY
# 2s heartbeats + 15 Parallel Threads + HIGH-WEIGHT + WIKIPEDIA FILLER.

echo "🚀 Starting Fernando Miner Swarm Entrypoint (GHOST-BROWSER)..."

# 1. Provide awp-wallet wrapper
cat <<EOF > /usr/local/bin/awp-wallet
#!/bin/bash
node /app/awp-wallet/scripts/wallet-cli.js "\$@"
EOF
chmod +x /usr/local/bin/awp-wallet

# 2. Autonomous Wallet Initialization
if [ -n "$MINER_MNEMONIC" ]; then
    echo "🔑 Importing Miner Wallet Identity..."
    awp-wallet import --mnemonic "$MINER_MNEMONIC" || echo "Wallet already exists, proceeding..."
fi

# 3. Verify Identity Details
echo "📍 Miner Identity Details:"
awp-wallet status || awp-wallet receive || echo "Warning: Identity verification failed"

# 4. Staggered Injection (Hardware Optimization)
if [ -n "$START_DELAY" ]; then
    echo "⏳ Delaying startup by ${START_DELAY} seconds to stagger resource spikes..."
    sleep "$START_DELAY"
fi

echo "🌐 Loading Environment Variables..."
cd /app/mine-skill

# 5. Start Mining (GHOST-BROWSER - TURBO POLLING)
# Priorities: LinkedIn Profiles (12x), Amazon (8x), LinkedIn Posts (5x).
# Wikipedia (1x) is included as a 'Filler' to ensure 100% thread saturation (no idle time).
echo "🎬 Starting Miner Swarm Node (15 THREADS - 2s INTERVAL)..."
python3 -u scripts/run_tool.py run-worker 2 0 "linkedin_profiles,amazon_products,amazon_reviews,linkedin_posts,wikipedia"
