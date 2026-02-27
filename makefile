README.md:
	@echo "# Jeu de devinette Bash" > README.md
	@echo "" >> README.md
	@echo "Ce projet contient un script Bash qui vous invite à deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "" >> README.md
	@echo "Date et heure de génération du README : $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $$(wc -l < guessinggame.sh)" >> README.md

.PHONY: all
all: README.md
