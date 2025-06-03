# 5. Nouveau Défi : Changements Non Commités Pendant un Rebase
# Avant de finir le rebase, vous avez besoin de tester une autre idée :

# bash
# Modifiez payment.html (sans commit)  
echo "<script>console.log('test')</script>" >> payment.html  

# Vous devez stash ces changements pour finir le rebase :

# bash
git stash  
git rebase --continue  
# Récupérez vos modifications :  
git stash pop  

# ➡️ Nouveau conflit (le stash et le rebase ont modifié les mêmes lignes).