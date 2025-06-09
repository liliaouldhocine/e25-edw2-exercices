# ⏮️ Exercices sur git revert
# (Pour annuler un commit en créant un nouveau commit inverse)

# 1. Revert Simple
# 1.1 Créez un commit avec un bug :

echo "bug = true" > config.txt
git add config.txt
git commit -m "Ajout config (bugué)"

# 1.2 Annulez-le avec revert :
git revert HEAD  # Crée un nouveau commit qui annule le précédent


# 2. Revert d’un Commit Ancien
# 2.1 Trouvez un commit vieux de 3 commits :
git log --oneline  # Copiez son hash (ex: abc1234)

# 2.2 Revertez-le :
git revert abc1234

# Observation : Un nouveau commit apparaît dans l’historique.


# 3. Revert avec Conflit
# 3.1 Créez deux commits :
# Commit A : Ajoutez const x = 1; dans app.js.
# Commit B : Modifiez la même ligne en const x = 2;.

# 3.2 Revertez Commit A :
git revert [hash-du-commit-A]  # ➡️ Conflit !

# Résolution :
# Modifiez app.js pour garder const x = 2;.
# Puis :
git add app.js
git revert --continue