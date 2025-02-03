FROM python:3.9-slim

WORKDIR /app

COPY /ifpshare-converter/requirements.txt .

# Installation des dépendances Python dans un environnement virtuel
RUN python -m venv venv && \
    . venv/bin/activate && \
    pip install --no-cache-dir -r requirements.txt

RUN pip install flask reportlab requests

COPY /ifpshare-converter .

# Utiliser l'environnement virtuel pour exécuter le script
CMD ["python", "app.py"]
