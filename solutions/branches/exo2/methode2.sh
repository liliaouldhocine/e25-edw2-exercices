# Méthode 2 (Rebase)

git checkout feature/settings  
git rebase main  # Rejoue tes commits sur main  
git checkout main  
git merge feature/settings  # Fast-forward  