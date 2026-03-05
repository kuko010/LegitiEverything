#!/bin/bash
set -e

echo "[0/5] Checkout bolt just in case..."
git checkout bolt

echo "[1/5] Pushing and committing to bolt..."
git add .
git commit -m "pre-merge"
git push

echo "[2/5] Stashing untracked files..."
git stash push -u -m "stash untracked before logicsim merge"

echo "[3/5] Switching to main branch..."
git checkout main

echo "[4/5] Overwriting logicsim from bolt..."
git checkout bolt -- data/logicsim 1.21.10

echo "[5/5] Staging and committing..."
git add data/logicsim "1.21.10"
git commit -m "Override logicsim folder from bolt branch"
echo "Done! logicsim is now updated from bolt."

echo "[6/5] Switching back to bolt branch..."
git checkout bolt

echo "[7/5] Restoring untracked files..."
git stash pop || echo "[WARN] Nothing to restore"