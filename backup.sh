#!/bin/bash

# Script de sauvegarde automatique d'un dossier
# Utilisation : ./backup.sh dossier


# Vérifie qu'un dossier est fourni
if [ -z "$1" ]; then
    echo "Erreur : indiquez un dossier"
    exit 1
fi


# Vérifie que le dossier existe
if [ ! -d "$1" ]; then
    echo "Erreur : dossier inexistant"
    exit 1
fi


# Nom du fichier de sauvegarde
BACKUP="backup_$(date +%Y-%m-%d).tar.gz"


# Création de la sauvegarde
tar -czf "$BACKUP" "$1"


# Confirmation
echo "Sauvegarde créée : $BACKUP"