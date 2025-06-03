# Solution :
# Récupérez les dernières modifications et fusionnez :

# bash
git checkout feature/payment  
git fetch origin  
git merge origin/main  
# Résolvez les conflits, puis :  
git add .  
git commit -m "Résolution des conflits pour la PR"  
git push origin feature/payment  