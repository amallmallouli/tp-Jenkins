# Image de base
FROM python:3.10

# Dossier de travail
WORKDIR /app

# Copier le fichier 
COPY requirements.txt .

# Installer les dépendances
RUN pip install -r requirements.txt
# Copier les fichiers 
COPY . .

# Exposer le port
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]
