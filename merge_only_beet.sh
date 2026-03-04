#!/bin/bash
echo "Switching to main branch..."
git checkout main || exit 1

echo "Overwriting logicsim from bolt..."
git checkout bolt -- data/logicsim || exit 1

echo "Staging changes..."
git add data/logicsim

echo "Committing..."
git commit -m "Override logicsim folder from bolt branch"
echo "Done! logicsim is now updated from bolt."

echo "Switching to bolt branch..."
git checkout bolt || exit 1