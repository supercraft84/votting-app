# Utilisation d'une image Python comme base
FROM python:3.11

# Définition du répertoire de travail
WORKDIR /app

# Copier le code de l'application
COPY voting-app/azure-vote /app

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 80
EXPOSE 80

# Lancer l'application
CMD ["python", "main.py"]
