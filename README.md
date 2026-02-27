git init
git add guessinggame.sh Makefile
git commit -m "Ajout du script et du Makefile"
make
git add README.md
git commit -m "Génération automatique du README"
git branch -M main
git remote add origin <URL_DE_VOTRE_DEPOT>
git push -u origin main
