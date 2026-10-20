# Fruit Shop API

## Commandes Docker

```bash
# Démarrer en mode développement (reconstruit à chaque modification de src/openAPI.yaml)
docker compose watch

# Démarrer en arrière-plan
docker compose up --build -d

# Voir les logs
docker compose logs -f

# Arrêter et supprimer les conteneurs
docker compose down

# Sans Compose : construire et lancer l'image
docker build -t fruit-docs .
docker run --rm -p 8080:80 fruit-docs
```

Documentation disponible sur http://localhost:8080