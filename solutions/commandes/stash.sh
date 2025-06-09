# 📦 Exercices sur git stash
# (Pour sauvegarder temporairement des modifications non commitées)

# 1. Stash Basique
# 1.1 bash
git stash

# 1.2 Vérifiez que votre répertoire est "propre" :
git status  # Doit afficher "nothing to commit"


# 2. Lister et Récupérer un Stash
# 2.1 Affichez la liste des stashs :
git stash list  # Affiche stash@{0}, stash@{1}, etc.

# 2.2 Récupérez le dernier stash :
git stash pop  # Applique ET supprime le stash

# => Alternative : Appliquez sans supprimer :
git stash apply stash@{0}

# 3. Stash avec Message
# 3.1 Créez un stash avec un label clair :
git stash push -m "Refacto JS en cours"

# 3.2 Vérifiez le message avec :
git stash list


# 4. Stash d’un Fichier Spécifique
# 4.1 Stash uniquement style.css (ignorez les autres modifications) :
git stash push style.css


# 5. Conflit après un Stash Pop
# 5.1 Modifiez script.js (ex: ligne 10), stash :
git stash

# 5.2 Modifiez la même ligne directement dans le répertoire.
# Essayez de réappliquer le stash :
git stash pop  # ➡️ Conflit !

# Résolution :
# Ouvrez script.js, résolvez manuellement.
# Puis :
git add script.js
git stash drop  # Supprime le stash (déjà appliqué)