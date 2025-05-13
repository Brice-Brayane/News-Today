# 1. Utiliser une image Python légère
FROM python:3.11-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier requirements.txt et installer les dépendances
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copier tous les fichiers restants (comme app.py)
COPY . .

# 5. Exposer le port que Flask utilisera
EXPOSE 3000

# 6. Lancer l’application Flask
CMD ["python", "app.py"]
