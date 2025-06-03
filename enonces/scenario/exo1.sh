# 🔥 Scénario Complexe : Gestion d’une Feature avec Conflits Récurrents

# Contexte :

# 1) Vous travaillez sur un projet avec :
# - Une branche main (stable).
# - Une branche feature/payment (votre feature en cours).
# - Deux collègues modifient aussi le code et poussent fréquemment sur main.

# 📜 Étapes du Scénario (À Exécuter dans l’Ordre)

#-------------------------------------------------------------
# 1. Préparation

# bash
git clone https://github.com/user/repo.git  
cd repo  
git checkout -b feature/payment  # Crée et bascule sur votre branche  

#-------------------------------------------------------------
# 2. Premier Commit sur la Feature
# Modifiez payment.html (ajoutez un bouton "Payer").

# bash
git add payment.html  
git commit -m "Ajout du bouton Payer"  

#-------------------------------------------------------------
# 3. Simulation d’une Mise à Jour de main par un Collègue
# (En vrai, ça arrive en background pendant que vous travaillez !)

# bash
git checkout main  
# Simule une modification d'un collègue (conflit futur)  
echo "<footer>Copyright 2023</footer>" >> payment.html  
git add payment.html  
git commit -m "Ajout du footer"  
git push origin main  # Supposez que c'est fait par un collègue 

#-------------------------------------------------------------
# 4. Retour sur la Feature : Conflit à la Réintégration

# bash
git checkout feature/payment  
# Essayez de mettre à jour votre branche avec `main` :  
git rebase main  


# ➡️ Conflit dans payment.html (votre bouton + le footer du collègue sont en conflit).