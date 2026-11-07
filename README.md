# Modpack Enzo + Victoria

Minecraft 1.21.1 · NeoForge 21.1.265 · 130 mods (dépendances comprises) · géré avec [packwiz](https://packwiz.infra.link/).

## Installation (Victoria, une seule fois)

1. Installer [Prism Launcher](https://prismlauncher.org/download/) et se connecter avec son compte Microsoft.
2. Télécharger `Enzo-Victoria-Prism.zip` depuis la [release « Instance Prism Launcher »](https://github.com/enzodrissi/modpack-enzo-victoria/releases/tag/instance).
3. Dans Prism : **Ajouter une instance** → **Importer** → choisir le zip → **OK**.
4. Lancer l'instance. Au premier lancement, une fenêtre télécharge les mods (environ 560 Mo), puis le jeu démarre.
   Si Prism demande de télécharger Java 21, accepter.

**Mises à jour : rien à faire.** À chaque lancement, l'instance compare avec la liste de ce dépôt : elle ajoute, met à jour et supprime les mods toute seule.

Mémoire réglée à 8 Go maximum (Prism → instance → **Modifier** → **Paramètres** → **Java** pour changer).

## Serveur dédié

Dans le dossier du serveur, avec `packwiz-installer-bootstrap.jar` :

```
java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githubusercontent.com/enzodrissi/modpack-enzo-victoria/main/pack.toml
```

À lancer avant chaque démarrage du serveur (les mods client uniquement, comme Sodium, ne sont pas installés).

## Mettre à jour le pack (Enzo)

`packwiz` est dans `%USERPROFILE%\go\bin`.

```
packwiz modrinth add <slug>                 # ajouter un mod Modrinth
packwiz curseforge add <url-curseforge>     # ajouter un mod CurseForge
packwiz remove <nom>                        # retirer un mod
packwiz update --all                        # tout mettre à jour
git add -A && git commit -m "..." && git push
```

Victoria reçoit les changements à son prochain lancement.

**Mekanism: Engineering** : le pack utilise la 1.2.1 de CurseForge. Pour la 1.3 :
- publiée sur CurseForge → `packwiz update mekanism-engineering` ;
- jar local → copier le jar dans `mods/`, supprimer `mods/mekanism-engineering.pw.toml`, puis `packwiz refresh`.

## Fichiers de départ

- `MODPACK_MANIFEST.md` / `MODS_MANIFEST.csv` : sélection d'origine (versions candidates, exclusions). Les 7 mods au statut « option » ne sont pas dans le pack.
- `PROMPT_CLAUDE_TESTS.md` : prompt de vérification et de tests du modpack.
