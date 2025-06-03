# pour le rebase 
git rebase main  

# Aprés la résolution du conflit, poursuivre le rebase
git add fichier-conflit.md  
git rebase --continue  

# Astuce : Pour annuler un rebase : git rebase --abort