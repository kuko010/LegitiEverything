git checkout bolt
git add .
git commit -m "pre-merge"
git push
git stash push -u -m "stash untracked before logicsim merge"
git checkout main
git checkout bolt -- data/logicsim
git add data/logicsim
git commit -m "Override logicsim folder from bolt branch"
echo "Done! logicsim is now updated from bolt."
git checkout bolt
git stash pop