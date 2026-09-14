#!/usr/bin/env bash
# Execute GAP (Groups, Algorithms, Programming) combinatorial scheduler
set -e

echo "=== GAP Combinatorial Symmetry Reduction Scheduler ==="

if command -v gap &> /dev/null; then
    gap -q -b src/industrial_scheduler.g
    echo "[SUCCESS] GAP automorphism group computed."
else
    echo "[INFO] GAP system not detected. Executing self-contained permutation group harness..."
    node runner/run.js
fi
