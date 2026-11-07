# Modpack Enzo + Victoria

Minecraft 1.21.1 · NeoForge 21.1.265 · 130 mods (dépendances comprises) · géré avec [packwiz](https://packwiz.infra.link/).

## Installation (Victoria, une seule fois)

1. Installer [Prism Launcher](https://prismlauncher.org/download/) et se connecter avec son compte Microsoft.
2. Télécharger `Enzo-Victoria-Prism.zip` depuis la [release « Instance Prism Launcher »](https://github.com/enzodrissi/modpack-enzo-victoria/releases/tag/instance).
3. Dans Prism : **Ajouter une instance** → **Importer** → choisir le zip → **OK**.
4. Lancer l'instance. Au premier lancement, une fenêtre télécharge les mods (environ 560 Mo), puis le jeu démarre.
   Si Prism demande de télécharger Java 21, accepter.

**Mises à jour : rien à faire.** À chaque lancement, l'instance compare avec la liste de ce dépôt : elle ajoute, met à jour et supprime les mods toute seule.

**Shaders** : Iris est inclus avec 11 shaders (Complementary Reimagined et Unbound, BSL, Sildur's Vibrant, MakeUp Ultra Fast, Bliss, Kappa, UShader, KUDA, Noble, Alpha Piscium), téléchargés depuis Modrinth et mis à jour comme les mods. En jeu : **Options** → **Vidéo** → **Packs de shaders** (ou la touche `O`). Les shaders sont désactivés par défaut.

**Réglages (PC 32 Go DDR5, RTX 4080/5080, i9 13e/14e gen)** :
- Java : 10 Go fixes (`-Xms`/`-Xmx` 10240 Mo), ZGC générationnel (`-XX:+UseZGC -XX:+ZGenerational -XX:+AlwaysPreTouch`). Prism → instance → **Modifier** → **Paramètres** → **Java** pour changer. Le Gestionnaire des tâches affiche plus de mémoire que 10 Go avec ZGC : c'est normal.
- Jeu : voir « Réglages anti-migraine » ci-dessous. Sodium garde ses réglages par défaut, déjà adaptés à ce matériel.

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

**Appliquer vite si l'instance est déjà installée** :
1. Fermer le jeu.
2. Dans Prism : clic droit sur l'instance → **Dossier** → ouvrir `minecraft` → supprimer `options.txt`.
3. Relancer : le fichier anti-migraine est réinstallé tout seul.

(Ça remet aussi les touches et le volume par défaut.) Sinon, tout se règle à la main en jeu : **Options** → **Accessibilité** et **Options** → **Vidéo**.

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
2. Copier le dossier `server/` sur le PC, puis dans ce dossier : `docker compose up -d`.
   Le premier démarrage télécharge NeoForge et les mods (quelques minutes).
3. Ajouter Victoria à la liste blanche : `docker exec enzo-victoria-mc rcon-cli whitelist add <pseudo>`.
4. Prégénérer le monde (zéro lag de génération en jeu) :
   ```
   docker exec enzo-victoria-mc rcon-cli chunky spawn
   docker exec enzo-victoria-mc rcon-cli chunky radius 3000
   docker exec enzo-victoria-mc rcon-cli chunky start
   ```
   Suivre : `docker exec enzo-victoria-mc rcon-cli chunky progress`. Un redémarrage reprend la tâche tout seul. Pour le Nether ensuite : `chunky world minecraft:the_nether`, `chunky radius 1500`, `chunky start`.

**Au quotidien** :
- Mettre à jour les mods : `docker compose restart` (le serveur relit le pack à chaque démarrage).
- Console : `docker attach enzo-victoria-mc` (sortir avec `Ctrl+P` puis `Ctrl+Q`, pas `Ctrl+C`).
- Logs : `docker logs -f enzo-victoria-mc`. Lag : `docker exec enzo-victoria-mc rcon-cli spark tps`.
- Arrêter proprement : `docker compose stop` (le monde est sauvegardé).

**Optimisations** : 10 Go fixes avec ZGC générationnel (pauses de quelques millisecondes), monde sur un volume Docker (disque Linux, bien plus rapide qu'un dossier Windows), écriture des chunks asynchrone, pas de crash watchdog, vol autorisé (jetpacks), prégénération Chunky. Lithium, ModernFix, FerriteCore et AllTheLeaks sont déjà dans le pack.

**Jouer depuis l'extérieur** : rediriger le port TCP 25565 de la box vers le PC serveur, ou utiliser un VPN comme Tailscale.

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

**Mekanism: Engineering** : le pack contient le jar 1.3 candidat (`mods/mekanismengineering-1.3.jar`, copié de l’instance ATLauncher `MekEng13Cand1211`). Pour une nouvelle version :
- publiée sur CurseForge → supprimer le jar, puis `packwiz curseforge add https://www.curseforge.com/minecraft/mc-mods/mekanism-engineering` ;
- nouveau jar local → remplacer le jar dans `mods/`, puis `packwiz refresh`.

**Mekanism Covers** : `mods/mekanismcovers-1.3-BETA+1.21-sodium08fix.jar` est la 1.3-BETA (MPL-2.0, [source](https://github.com/lucaargolo/mekanism-covers)) sans son mixin Sodium (`sodium.SodiumBlockRendererMixin` retiré de `mekanismcovers.mixins.json`). Ce mixin vise Sodium 0.6 et faisait planter le jeu à l'entrée d'un monde avec Sodium 0.8 (exigé par Supplementaries et More Culling). Seul effet : la teinte des covers transparentes ne s'applique pas avec Sodium.

## Fichiers de départ

- `MODPACK_MANIFEST.md` / `MODS_MANIFEST.csv` : sélection d'origine (versions candidates, exclusions). Les 7 mods au statut « option » ne sont pas dans le pack.
- `PROMPT_CLAUDE_TESTS.md` : prompt de vérification et de tests du modpack.
