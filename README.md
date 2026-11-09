# Modpack Enzo + Victoria

Minecraft 1.21.1 · NeoForge 21.1.265 · 200 mods (dépendances comprises) · géré avec [packwiz](https://packwiz.infra.link/).

## Installation (Victoria, une seule fois)

1. Installer [Prism Launcher](https://prismlauncher.org/download/) et se connecter avec son compte Microsoft.
2. Télécharger `Enzo-Victoria-Prism.zip` depuis la [release « Instance Prism Launcher »](https://github.com/enzodrissi/modpack-enzo-victoria/releases/tag/instance).
3. Dans Prism : **Ajouter une instance** → **Importer** → choisir le zip → **OK**.
4. Lancer l'instance. Au premier lancement, une fenêtre télécharge les mods (environ 800 Mo), puis le jeu démarre (un peu plus d'une minute).
   Si Prism demande de télécharger Java 21, accepter.
5. Fermer le jeu, puis appliquer son profil graphique : clic droit sur l'instance → **Dossier** → ouvrir `minecraft` → `profils` → double-cliquer sur `Appliquer profil Victoria.bat`. Il règle tout l'anti-migraine (voir plus bas).
6. Relancer, puis **Multijoueur** → **Enzo + Victoria** → **Rejoindre le serveur**.

**Serveur déjà enregistré** : le pack installe `servers.dat` avec « Enzo + Victoria » (`chords-simulate.tun.ply.gg`) dans **Multijoueur**. Ce fichier est réécrit quand le pack le change : un serveur ajouté à la main peut disparaître.

**Mises à jour : rien à faire.** À chaque lancement, l'instance compare avec la liste de ce dépôt : elle ajoute, met à jour et supprime les mods toute seule.

**Shaders** : Iris est inclus avec 11 shaders (Complementary Reimagined et Unbound, BSL, Sildur's Vibrant, MakeUp Ultra Fast, Bliss, Kappa, UShader, KUDA, Noble, Alpha Piscium), téléchargés depuis Modrinth et mis à jour comme les mods. En jeu : **Options** → **Vidéo** → **Packs de shaders** (ou la touche `O`). Les shaders sont désactivés par défaut ; un profil graphique (ci-dessous) active Complementary Reimagined.
Chocapic13 et Beyond Belief ne sont pas inclus : leurs auteurs interdisent le téléchargement automatique. Pour les avoir, télécharger `Chocapic13_V9.1_Extreme_beta_5.zip` ([lien](https://www.curseforge.com/minecraft/shaders/chocapic13-shaders/files/3221720)) et `BeyondBeliefLegacy_V1.2.4.zip` ([lien](https://www.curseforge.com/minecraft/shaders/beyond-belief-shaders/files/5981099)), puis les copier dans le dossier `minecraft/shaderpacks` de l'instance.

**Enchantements jusqu'au niveau XV** : l'Enchanting Infuser propose les niveaux I à XV (Quick Charge et Lure restent à V, au-delà ils cassent l'arbalète et la pêche). Il faut 15 bibliothèques autour de l'Infuser pour le niveau XV ; le prix en niveaux monte avec le niveau choisi. L'enclume est plafonnée à XV aussi.

**Réglages (PC 32 Go DDR5, RTX 4080/5080, i9 13e/14e gen)** :
- Java : 10 Go fixes (`-Xms`/`-Xmx` 10240 Mo), ZGC générationnel (`-XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch`). Prism → instance → **Modifier** → **Paramètres** → **Java** pour changer. Le Gestionnaire des tâches affiche plus de mémoire que 10 Go avec ZGC : c'est normal.
- Jeu : voir « Réglages anti-migraine » ci-dessous. Sodium garde ses réglages par défaut, déjà adaptés à ce matériel.
- Optimisations côté joueur : Sodium, Sodium Extra, ImmediatelyFast, Entity Culling, More Culling, BadOptimizations, ModernFix (modèles chargés à la demande : lancement en un peu plus d'une minute, environ 4 Go de mémoire au lieu de 10), FerriteCore. Dynamic FPS baisse les FPS quand la fenêtre du jeu n'est pas au premier plan.

## Profils graphiques (Enzo, Victoria)

Deux profils prêts à l'emploi, dans le dossier `profils` de l'instance :

| | Enzo | Victoria |
|---|---|---|
| Distance de rendu / simulation | 16 / 12 | 12 / 10 |
| VSync | Non (FPS max) | Oui (image stable) |
| Shader | Complementary Reimagined, ombres hautes | Complementary Reimagined sans flou de mouvement, aberration, reflets d'objectif, balancement de la main ni scintillement des torches |
| Anti-migraine | Non | Oui (voir section suivante) |
| Tremblements d'écran des mods (Cataclysm, Twilight Forest, Eternal Starlight) | Oui | Non |

**Appliquer un profil** :
1. Fermer le jeu.
2. Dans Prism : clic droit sur l'instance → **Dossier** → ouvrir `minecraft` → `profils`.
3. Double-cliquer sur `Appliquer profil Enzo.bat` ou `Appliquer profil Victoria.bat`.

Les touches, le volume et la langue sont gardés. Le profil remplace seulement les réglages qu'il contient.

**Interface** : la mini-carte JourneyMap est carrée, en haut à droite, et tourne avec le joueur. Si la rotation gêne, en jeu : **J** → **Options** → **Mini-carte** → **Orientation** → **North**. Jade affiche le bloc ou la créature visée en haut de l'écran.

## Pratique au quotidien

| Pour | Comment |
|---|---|
| Voir une recette ou à quoi sert un objet | JEI (liste à droite de l'inventaire) : survoler l'objet, `R` = recette, `U` = utilisations |
| Savoir où trouver un minerai, ce que lâche un monstre | JEI, onglets ajoutés par Just Enough Resources |
| Comprendre un enchantement | Survoler le livre ou l'objet enchanté : la description s'affiche (Enchantment Descriptions) |
| Déplacer vite des objets | Mouse Tweaks : clic maintenu et glisser sur les cases, ou molette sur un objet |
| Jeter un objet | Case poubelle à côté de l'inventaire (TrashSlot) |
| Faire tourner, équilibrer ou vider la grille de craft | Petits boutons à côté de la grille (Crafting Tweaks) |
| Choisir entre deux recettes identiques | Bouton au-dessus du résultat (Polymorph) |
| Voir sa faim et sa saturation | Barre de faim (AppleSkin) |
| Voir le contenu d'une shulker | La survoler (ShulkerBoxTooltip) |
| Porter une armure pour son apparence | Bouton dans l'inventaire (Cosmetic Armor Reworked) |
| Trouver ou changer une touche | **Options** → **Commandes** : barre de recherche et touches en conflit (Controlling) |

Aussi : durabilité en chiffres sur les outils, objets ramassés listés à l'écran, têtes des joueurs dans le chat, feuilles qui tombent vite après avoir coupé un arbre.

## Réglages anti-migraine (Victoria)

Le pack installe un `options.txt` pensé pour éviter les maux de tête. Il est appliqué **à la première installation seulement**, puis n'est plus jamais écrasé (chacun garde ses propres réglages).

Ce qui déclenche les migraines, ce n'est pas le nombre de FPS, mais les **mouvements de caméra**, les **flashs** et une **image instable** (saccades, déchirures). Le fichier règle donc :

| Réglage | Valeur | Pourquoi |
|---|---|---|
| Balancement de la vue | Non | La caméra ne tangue plus en marchant |
| Effets de champ de vision | 0 % | Pas de zoom quand on court ou qu'on boit une potion |
| Effets de distorsion | 0 % | Pas d'ondulation (nausée, portail du Nether) |
| Inclinaison quand on prend un coup | 0 % | Pas de secousse de l'écran |
| Pulsation de l'effet Obscurité | 0 % | Plus de clignotement près du Warden |
| Masquer les éclairs | Oui | Pas de flash blanc pendant les orages |
| Vitesse de l'éclat d'enchantement | 0 | Les objets enchantés ne scintillent plus |
| Flou des menus, défilement du panorama | 0 | Écran titre fixe, menus nets |
| VSync | Oui | Image fluide, sans déchirure, calée sur l'écran |
| Particules | Réduites | Moins d'agitation à l'écran |
| Saut automatique | Non | Pas de petits sauts imprévus de la caméra |
| Distance de rendu | 12 | |

**Si un réglage a été changé par erreur** : fermer le jeu et relancer `Appliquer profil Victoria.bat` (voir « Profils graphiques »). Tout l'anti-migraine revient ; les touches, le volume et la langue sont gardés. Sinon, tout se règle à la main en jeu : **Options** → **Accessibilité** et **Options** → **Vidéo**.

**Shaders** : si un shader donne mal à la tête, le désactiver (touche `O`) ou, dans ses réglages, couper **Motion Blur**, **Depth of Field** et **Chromatic Aberration**.

## Serveur dédié (Docker Desktop)

Fichier : [`server/docker-compose.yml`](server/docker-compose.yml) (image `itzg/minecraft-server`).

**Une seule fois sur le PC serveur** :
1. Docker Desktop utilise par défaut la moitié de la RAM (16 Go sur 32). Créer `%USERPROFILE%\.wslconfig` :
   ```
   [wsl2]
   memory=20GB
   ```
   puis `wsl --shutdown` et relancer Docker Desktop.
2. Cloner ce dépôt (`git clone https://github.com/enzodrissi/modpack-enzo-victoria`), puis créer `server/.env` (hors Git, ne jamais le commiter) :
   ```
   COMPOSE_PROFILES=tunnel
   SECRET_KEY=<clé secrète de l'agent playit, la même sur chaque PC>
   ```
   puis dans `server/` : `docker compose up -d`.
   Le premier démarrage télécharge NeoForge et les mods (quelques minutes).
3. Liste blanche : iDimonD et vickicoeur sont dans `WHITELIST`. Autre joueur : `docker exec enzo-victoria-mc rcon-cli whitelist add <pseudo>`.
4. Prégénérer le monde (zéro lag de génération en jeu) :
   ```
   docker exec enzo-victoria-mc rcon-cli chunky spawn
   docker exec enzo-victoria-mc rcon-cli chunky radius 3000
   docker exec enzo-victoria-mc rcon-cli chunky start
   ```
   Suivre : `docker exec enzo-victoria-mc rcon-cli chunky progress`. Un redémarrage reprend la tâche tout seul. Pour le Nether ensuite : `chunky world minecraft:the_nether`, `chunky radius 1500`, `chunky start`.

**Au quotidien** :
- Lancer : `docker compose up -d` dans `server/`. Le serveur relit le pack à chaque démarrage : il est toujours à jour.
- Mettre à jour les mods sans arrêter Docker : `docker compose restart mc`.
- Console : `docker attach enzo-victoria-mc` (sortir avec `Ctrl+P` puis `Ctrl+Q`, pas `Ctrl+C`).
- Logs : `docker logs -f enzo-victoria-mc`. Lag : `docker exec enzo-victoria-mc rcon-cli neoforge tps` (`spark tps` ne répond pas par RCON).
- Arrêter proprement : `docker compose stop` (le monde est sauvegardé).

**Optimisations** : 8 Go fixes avec ZGC générationnel en huge pages (pauses de quelques millisecondes, journal dans `gc.log`), monde sur un volume Docker (disque Linux, bien plus rapide qu'un dossier Windows), écriture des chunks asynchrone, pas de crash watchdog, vol autorisé (jetpacks), prégénération Chunky (les 8 décorations de Regions Unexplored qui figeaient la génération sont réécrites dans `kubejs/data/regions_unexplored`). Lithium, ModernFix, FerriteCore, AllTheLeaks et Let Me Despawn (les monstres qui ramassent un objet finissent par disparaître) sont dans le pack.

**Jouer depuis l'extérieur** : tunnel sortant [playit.gg](https://playit.gg) (service `playit`, activé par `server/.env`). L'adresse publique appartient à la clé, pas au PC : le PC qui démarre prend l'adresse, rien à changer sur la box. Un seul serveur allumé à la fois. Chaque PC a son propre monde (volume `mc-data`).

Sans Docker : `java -jar packwiz-installer-bootstrap.jar -g -s server https://raw.githubusercontent.com/enzodrissi/modpack-enzo-victoria/main/pack.toml` dans le dossier du serveur, avant chaque démarrage.

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

**Mekanism: Engineering** : pris sur [CurseForge](https://www.curseforge.com/minecraft/mc-mods/mekanism-engineering) (`mods/mekanism-engineering.pw.toml`). Le workflow GitHub `Suivre Mekanism Engineering` vérifie toutes les 3 h s'il y a un nouveau fichier 1.21.1 NeoForge et pousse la mise à jour tout seul. Le serveur la prend à son prochain redémarrage, Victoria à son prochain lancement. Pour forcer : onglet Actions du dépôt, « Run workflow ».

**Serveur sur plusieurs PC** : le tunnel playit.gg donne une adresse publique fixe, sans redirection de port. Sur chaque PC : cloner le dépôt, créer `server/.env` (hors Git) avec `COMPOSE_PROFILES=tunnel` et `SECRET_KEY=<clé playit>`, puis `docker compose up -d` dans `server/`. Même clé partout, un seul serveur allumé à la fois. Chaque PC a son propre monde (volume Docker `mc-data`).

**Mekanism Covers** : retiré du pack (abandonné, son mixin Sodium 0.6 faisait planter le jeu avec Sodium 0.8).

## Fichiers de départ

- `MODPACK_MANIFEST.md` / `MODS_MANIFEST.csv` : sélection d'origine (versions candidates, exclusions). Les 7 mods au statut « option » ne sont pas dans le pack.
- `PROMPT_CLAUDE_TESTS.md` : prompt de vérification et de tests du modpack.
