# 📦 Exercices sur git stash
# (Pour sauvegarder temporairement des modifications non commitées)

# 1. Stash Basique
# Modifiez un fichier existant (script.js) sans le commiter.
# 1.1 Sauvegardez les changements dans le stash :
# 1.2 Vérifiez que votre répertoire est "propre" :


# 2. Lister et Récupérer un Stash
# 2.1 Affichez la liste des stashs :
# 2.2 Récupérez le dernier stash :


# 3. Stash avec Message
# 3.1 Créez un stash avec un label clair :
# 3.2 Vérifiez le message avec :


# 4. Stash d’un Fichier Spécifique
# 4.1 Stash uniquement style.css (ignorez les autres modifications) :


# 5. Conflit après un Stash Pop
# 5.1 Modifiez script.js (ex: ligne 10), stash :
# 5.2 Modifiez la même ligne directement dans le répertoire et essayez de réappliquer le stash :
git stash pop  # ➡️ Conflit !

