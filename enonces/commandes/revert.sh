# ⏮️ Exercices sur git revert
# (Pour annuler un commit en créant un nouveau commit inverse)

# 1. Revert Simple
# 1.1 Créez un commit avec un bug :
# 1.2 Annulez-le avec revert :
# 1.3 Vérifiez que config.txt est revenu à son état pré-bug.


# 2. Revert d’un Commit Ancien
# 2.1 Trouvez un commit vieux de 3 commits :
# 2.2 Revertez-le :


# 3. Revert avec Conflit
# 3.1 Créez deux commits :
# Commit A : Ajoutez const x = 1; dans app.js.
# Commit B : Modifiez la même ligne en const x = 2;.

# 3.2 Revertez Commit A :
git revert [hash-du-commit-A]  # ➡️ Conflit !
