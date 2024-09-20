# Utilisez une image Python comme base
FROM python:3.12

# Définir le répertoire de travail
WORKDIR /app

# Copier le fichier de dépendances
COPY app/requirements.txt ./requirements.txt

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY app/ ./

# Exposer le port de l'application
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "-m", "uvicorn", "mini_groq:app", "--host", "0.0.0.0", "--port", "5000"]
