#!/bin/bash

# Fonction pour créer un fichier avec des permissions spécifiques et du contenu optionnel
create_file() {
    local filepath="$1"
    local permissions="$2"
    local content="${3:-}"
    
    mkdir -p "$(dirname "$filepath")"
    echo -n "$content" > "$filepath"
    chmod "$permissions" "$filepath"
}

# Fonction pour créer un répertoire avec des permissions spécifiques
create_directory() {
    local dirpath="$1"
    local permissions="$2"
    
    mkdir -p "$dirpath"
    chmod "$permissions" "$dirpath"
}

# Créer les répertoires avec les permissions spécifiées
create_directory "personnages" "755"
create_directory "personnages/mascottes" "775"
create_directory "personnages/super heros" "755"
create_directory "personnages/super heros/femmes" "755"
create_directory "personnages/super heros/femmes/cape" "775"
create_directory "personnages/super heros/femmes/cape/batgirl" "775"
create_directory "personnages/super heros/femmes/cape/wonderwoman" "775"
create_directory "personnages/super heros/femmes/sans cape" "775"
create_directory "personnages/super heros/femmes/sans cape/electra" "775"
create_directory "personnages/super heros/femmes/sans cape/superwoman" "775"
create_directory "personnages/super heros/hommes" "755"
create_directory "personnages/super heros/hommes/cape" "775"
create_directory "personnages/super heros/hommes/sans cap" "775"

# Créer les fichiers avec les permissions spécifiées
create_file "personnages/mascottes/beastie" "644"
create_file "personnages/mascottes/bibendum" "644"
create_file "personnages/mascottes/mario" "644"
create_file "personnages/mascottes/sonic" "644"
create_file "personnages/super heros/hommes/cape/batman" "644"
create_file "personnages/super heros/hommes/cape/superman" "644"
create_file "personnages/super heros/hommes/cape/thor" "644"
create_file "personnages/super heros/hommes/sans cap/antman" "644"
create_file "personnages/super heros/hommes/sans cap/daredevil" "644"
create_file "personnages/super heros/hommes/sans cap/linuxman" "644"
create_file "personnages/super heros/hommes/sans cap/spiderman" "644"

echo "Arborescence créée avec succès."
