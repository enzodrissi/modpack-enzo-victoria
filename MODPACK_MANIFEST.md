# Modpack Enzo + Victoria — manifeste candidat

**Date : 7 novembre 2026.**

**Cible** : Minecraft 1.21.1 · NeoForge 21.1.265 (cible issue de notre référence ATM10 8.5, à confirmer avec les mods) · Java 21 · serveur dédié et deux clients.

> **IMPORTANT** : ce fichier n’est PAS une distribution de .jar ni une liste dont chaque combinaison a été testée. Les versions non marquées « version confirmée depuis pages officielles » sont des **candidats repris de la sélection précédente** et doivent être confrontés aux fichiers exacts de CurseForge/Modrinth et aux dépendances avant téléchargement. Aucun jar ni SHA-256 vérifié n’est fourni.

**Statuts** : `socle` = demandé/retenu ; `performance` = optimisation ; `option` = pas à installer d’emblée ; `dépendance` = à résoudre. Les mods déjà référencés ATM10 peuvent être absents du pack personnalisé tant qu’ils ne sont pas réimportés.

**Inventaire : 117 entrées uniques**, incluant bibliothèques et options.

## Règles de sélection

- Le noyau est Mekanism + Mekanism: Engineering + Evolved Mekanism/Extras + AE2/AdvancedAE/ExtendedAE/MEGA Cells + Industrial Fluid Pump + abeilles (Productive Bees, ModularBees, Genesis).
- Avec **Prefab** pour la construction instantanée ; WATUT pour l’état des joueurs ; TP activés avec FTB Essentials.
- Réintroduire Allthemodium/Vibranium/Unobtainium, leurs mondes, OreSight et fours Iron Furnaces via KubeJS/configurations ATM10 adaptées.
- Aucun Corail Tombstone, Waystones, Mekanism Unleashed, Better Fusion Reactor, Apothic Enchanting, Not Enough Animations, corps en troisième personne, ni exigence de craft ATM Star.
- Enchanting Infuser avec choix explicite d’un niveau I–XV et coût XP progressif : **besoin fonctionnel, NON démontré** sur la combinaison des deux mods ; tester puis envisager un addon dédié, sans annoncer le résultat comme acquis.
- Conserver la progression survie légère pour Victoria : zoo, animaux, cuisines, dimensions, décoration et exploration.
- Optimisations : Sodium ou Embeddium, jamais les deux ; immédiatementFast/Entity Culling/More Culling côté client ; ModernFix/FerriteCore/AllTheLeaks/Lithium côté adapté ; mesures avant ajout de C2ME.

## Inventaire complet

### Mekanism

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Mekanism | 10.7.19.85 | socle | version candidate | Version candidate ATM10 8.5 |
| Mekanism Generators | 10.7.19.85 | socle | version candidate |  |
| Mekanism Tools | 10.7.19.85 | socle | version candidate |  |
| Mekanism Additions | 10.7.19.85 | socle | version candidate |  |
| Mekanism: Engineering | 1.2.1 | socle | version candidate | Vérifier matrice de compatibilité et configs de pompage |
| Evolved Mekanism | 1.3.0-fix2 | socle | version candidate | Vérifier avec Evolved Extras/Mekanism Extras |
| Mekanism Extras | 1.4.2 | socle | version candidate | Vérifier nouveaux tiers/recettes |
| Evolved Mekanism Extras | 1.2.2 | socle | version candidate | Potentielle incompatibilité avec Evolved 1.3.0-fix2 |
| Mekanism: More Thermal Evaporation | 3.2.2 | socle | version candidate | En particulier tours 9x9, tiers et recette brine/lithium |
| Mekanism: MoreMachine | 1.4.2 | socle | version candidate |  |
| Mekanism Covers | 1.3-BETA | socle | version candidate | Option si instabilité |

### AE2

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Applied Energistics 2 | 19.2.18 | socle | version candidate |  |
| AdvancedAE | 1.6.12 | socle | version candidate |  |
| ExtendedAE | 2.2.43 | socle | version candidate |  |
| Expanded AE | 2.1.4 | socle | version candidate |  |
| MEGA Cells | 4.11.0 | socle | version candidate |  |
| Applied Mekanistics | 1.6.3 | socle | version candidate |  |
| AE2 Wireless Terminals / AE2WTLib | 19.5.1 | socle | version candidate |  |
| AdvancedAE Addon | 21.1.0 | socle | version candidate | Vérifier liaison Quantum Crafter |
| AEInfinityBooster | 2.1.0 | socle | version candidate |  |
| AE2 JEI Integration | 1.2.1 | socle | version candidate |  |
| AE2 Crafting Tree | 1.1.1 | socle | version candidate |  |
| AE2 Network Analyzer | 2.1.5 | socle | version candidate |  |

### Énergie et logistique

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Powah | 6.2.10 | socle | version candidate |  |
| Pipez | 1.2.31 | socle | version candidate |  |
| Sophisticated Storage | 1.6.15 | socle | version candidate |  |
| Sophisticated Backpacks | 3.26.19 | socle | version candidate |  |
| Just Dire Things | 1.5.7 | socle | version candidate | Time Wand à tester avec machines Evolved |
| JDT Time Accelerators | 2.2.0 | socle | version candidate | Tests TPS/duplication avec AE2 |

### Abeilles, ATM et minerais

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Productive Bees | 13.14.0 | socle | version candidate |  |
| ModularBees | 3.4 | socle | version candidate | Apiaries et multiblocs |
| Productive Bees Genesis | 1.2.3 | socle | version candidate | Compatibilité annoncée Productive Bees 13.14.0 et Mekanism 10.7.19.85 |
| The Bumblezone | 7.17.3 | socle | version candidate |  |
| Allthemodium | 3.2.1 | socle | version candidate | Allthemodium, Vibranium, Unobtainium, The Other, Mining Dimension |
| AllTheOres | 3.2.0 | socle | version candidate |  |
| Iron Furnaces | 4.3.2 | socle | version candidate | Tier Allthemodium, Vibranium, Unobtainium; Rainbow Furnace |
| Potions Master | 21.1.113-1.0.1 | socle | version candidate | OreSight ATM via recettes/configs |
| KubeJS | 2101.7.2-build.381 | socle | version candidate | Recettes/loot/worldgen, à adapter plutôt que copier intégralement |

### Animaux et cuisine

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Naturalist | 2.0.3 | socle | version candidate |  |
| Critters and Companions | 2.7.0 | socle | version candidate |  |
| Friends & Foes | 5.0.4 | socle | version candidate |  |
| Mob Catcher | 1 | socle | version candidate | Version affichée imprécise: trouver numéro exact du fichier |
| Farmer's Delight | 1.3.4 | socle | version candidate |  |
| Aquaculture 2 | 2.7.22 | socle | version candidate |  |
| Pam's HarvestCraft 2 - Crops | 1.0.9 | socle | version candidate |  |
| Pam's HarvestCraft 2 - Trees | 1.0.9 | socle | version candidate |  |
| Pam's HarvestCraft 2 - Food Core | 1.0.4 | socle | version candidate |  |
| Pam's HarvestCraft 2 - Food Extended | 1.0.0 | socle | version candidate |  |
| [Let's Do] Bakery | 2.1.11 | socle | version candidate |  |
| [Let's Do] Farm & Charm | 1.1.29 | socle | version candidate |  |
| [Let's Do] Vinery | 1.5.6 | socle | version candidate |  |

### Exploration

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| The Twilight Forest | 4.8.3345 | socle | version candidate |  |
| The Aether | 1.5.10 | socle | version candidate |  |
| Oh The Biomes We've Gone | 2.6.3 | socle | version candidate |  |
| Regions Unexplored | 0.5.9 | socle | version candidate | Coexiste avec Oh The Biomes We've Gone? tester worldgen |
| Explorify | 1.6.5 | socle | version candidate |  |
| Repurposed Structures | 7.5.22 | socle | version candidate |  |
| Deeper and Darker | 1.4.1 | socle | version candidate | Option à activer ultérieurement |
| Eternal Starlight | 0.9.1 | socle | version candidate | Option à activer ultérieurement |

### Construction et décoration

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Chipped | 4.0.2 | socle | version candidate |  |
| Rechiseled | 1.2.6 | socle | version candidate |  |
| Rechiseled: Chipped | 1.3 | socle | version candidate |  |
| Handcrafted | 4.0.3 | socle | version candidate |  |
| Supplementaries | 4.0.2 | socle | version candidate |  |
| FramedBlocks | 10.6.3 | socle | version candidate |  |
| MrCrayfish's Furniture: Refurbished | 1.0.22 | socle | version candidate |  |
| Another Furniture | 4.0.3 | socle | version candidate |  |
| Macaw's Roofs | 2.3.2 | socle | version candidate |  |
| Macaw's Bridges | 3.1.2 | socle | version candidate |  |
| Macaw's Doors | 1.1.5 | socle | version candidate |  |
| Macaw's Windows | 2.4.2 | socle | version candidate |  |
| Macaw's Fences and Walls | 1.2.1 | socle | version candidate |  |
| Macaw's Furniture | 3.4.1 | socle | version candidate |  |
| Macaw's Lights and Lamps | 1.1.5 | socle | version candidate |  |
| Macaw's Paths and Pavings | 1.1.1 | socle | version candidate |  |
| Macaw's Stairs and Balconies | 1.0.2 | socle | version candidate |  |
| Macaw's Trapdoors | 1.1.5 | socle | version candidate |  |
| Decocraft | 3.0.11 | socle | version candidate | Option: volumineux et plus éloigné du vanilla |

### QoL

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Prefab | 1.0.9 | socle | version candidate | Impératif: installer loader NeoForge |
| What Are They Up To (WATUT) | 1.2.7 | socle | version candidate | Client et serveur; messages de commandes masqués par défaut |
| CoroUtil | 1.3.9 | socle | version candidate | Dépendance WATUT |
| FTB Essentials | 2101.1.10 | socle | version candidate | Activer /home /sethome /tpa /back |
| FTB Chunks | 2101.1.23 | socle | version candidate |  |
| FTB Teams | 2101.1.11 | socle | version candidate |  |
| FTB Ultimine | 2101.1.15 | socle | version candidate |  |
| JourneyMap | 6.0.9 | socle | version candidate |  |
| Just Enough Items (JEI) | 19.70.0.469 | socle | version candidate |  |
| Nature's Compass | 3.4.0 | socle | version candidate |  |
| Explorer's Compass | 3.4.0 | socle | version candidate |  |
| Lootr | 1.11.38.127 | socle | version candidate |  |
| Enchanting Infuser | 21.1.4 | socle | version candidate | Exige compatibilité spéciale si niveaux XV ne s'affichent pas |
| Overflow Enchantments | 1.0.3 | socle | version candidate | Ne garantit pas seul affichage des niveaux custom dans Infuser |
| Simple Backups | 4.0.30 | socle | version candidate |  |

### Dépendances (non exhaustif)

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Architectury API | 13.0.11 | dépendance | version candidate | Vérifier relation mod dépendant |
| Sophisticated Core | 1.5.25 | dépendance | version candidate |  |
| FTB Library | 2101.1.39 | dépendance | version candidate |  |
| Moonlight Lib | 3.8.0 | dépendance | version candidate |  |
| Balm | 21.0.67 | dépendance | version candidate |  |
| Curios API | 9.5.1 | dépendance | version candidate |  |
| Rhino | 2101.2.8-build.91 | dépendance | version candidate |  |

### Performance existante / candidate ATM10

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| Sodium | 0.8.13 | performance | version candidate | Client only; ne pas installer Embeddium simultanément |
| ModernFix | 5.27.27 | performance | version candidate | Mémoire, corrections et démarrage |
| FerriteCore | 7.0.3 | performance | version candidate | Réduction RAM |
| spark | 1.10.124 | performance | version candidate | Profiling TPS/MSPT/CPU |

### Performance ajout vérifié NeoForge 1.21.1

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| ImmediatelyFast | 1.6.15 | performance | version confirmée depuis pages officielles | Client only; vérifier si déjà présent dans ATM10 avant ajout |
| Entity Culling | 1.11.3 | performance | version confirmée depuis pages officielles | Client only |
| More Culling | 1.0.11 | performance | version confirmée depuis pages officielles | Client only; correctifs Regions Unexplored |
| AllTheLeaks | 1.1.12 | performance | version confirmée depuis pages officielles | Client et serveur; vérifier patches superposés ModernFix |
| Clumps | 19.0.0.1 | performance | version confirmée depuis pages officielles | Client et serveur; regroupement XP |
| Lithium | 0.15.4 | performance | version confirmée depuis pages officielles | Client et serveur; valider avec Mekanism/BEES |

### Performance option expérimentale

| Mod | Version cible | Statut | Validation | Note |
|---|---|---|---|---|
| BadOptimizations | 2.4.1 | option | recherche nécessaire | Tester après stack de base; variante NeoForge exacte à vérifier |
| C2ME | non figée | option | recherche nécessaire | Expérimental pour monde multibiomes/multistructures; tester isolation |
| Chunky | non figée | option | recherche nécessaire | Pré-générer terrain hors sessions; rechercher jar 1.21.1 NeoForge |
| Sodium Extra | non figée | option | recherche nécessaire | Option côté client; vérifier support Sodium exact |
| Iris | non figée | option | recherche nécessaire | Option shaders seulement, garder profil sans shader |
| Dynamic FPS | non figée | option | recherche nécessaire | Économie CPU en arrière-plan, pas priorité |
| ServerCore | non figée | option | recherche nécessaire | À benchmark isolément |

## Points bloquants / arbitrages nécessaires

- **Mekanism :** confirmer explicitement les versions qui cohabitent entre Evolved Mekanism 1.3.0-fix2, Mekanism Extras 1.4.2, Evolved Mekanism Extras 1.2.2, More Thermal Evaporation 3.2.2, Mekanism: Engineering 1.2.1 ; tests au niveau classes, tiers et recettes, pas uniquement au démarrage.
- **Brine/Deutérium/Tritium :** comparer toutes les configurations importées, ne pas recopier en aveugle les paramètres précédemment proposés ; mesurer débits mB/t, conversion, bottlenecks, ensoleillement et stockage nocturne. Vérifier le comportement des pompes custom et de `heavyWaterAmount` (~50 sur l’ancienne référence ATM10) avant modification.
- **Enchantements XV :** datapack relevant `max_level` peut ne pas être respecté par Enchanting Infuser. Attendre le test du GUI avant de finaliser.
- **Mods animaux et worldgen :** génération, spawn cap, réseau, exploration serveur ; ne pas activer simultanément tous les mods optionnels.
- **Dépendances, mixins et versions :** demander à Claude de créer un lockfile de fichiers exacts (URL officielle, taille, hash SHA-256, côté, dépendances, licence) et un rapport des versions modifiées.
- **Benchmarks :** établir une base sans les mods expérimentaux, puis ajouter un seul optimiseur à la fois. Exclure des comparaisons toute mesure sans conditions répétables.

## Sources officielles de vérification

- ATM10 : https://www.curseforge.com/minecraft/modpacks/all-the-mods-10
- ImmediatelyFast : https://www.curseforge.com/minecraft/mc-mods/immediatelyfast/files/all
- Entity Culling : https://www.curseforge.com/minecraft/mc-mods/entityculling/files/all?page=1&version=1.21.1
- More Culling : https://www.curseforge.com/minecraft/mc-mods/moreculling/files/all?page=1&version=1.21.1
- AllTheLeaks : https://www.curseforge.com/minecraft/mc-mods/alltheleaks
- Lithium : https://www.curseforge.com/minecraft/mc-mods/lithium/files/all?version=1.21.1
- Clumps : https://www.curseforge.com/minecraft/mc-mods/clumps
- Guide performance 1.21.1 : https://github.com/Polytetrafluoroethylene-PTFE/MC-Optimization-Guide/blob/main/mods-n-stuff/1.21.1.md
- Mekanism : https://www.curseforge.com/minecraft/mc-mods/mekanism
- More Thermal Evaporation : https://www.curseforge.com/minecraft/mc-mods/morethermalevaporation
- Productive Bees : https://www.curseforge.com/minecraft/mc-mods/productive-bees
- Prefab : https://www.curseforge.com/minecraft/mc-mods/prefab

## Utilisation

1. Fournir ce manifeste et `PROMPT_CLAUDE_TESTS.md` à Claude Code.
2. Lui fournir idéalement le profil CurseForge ATM10 8.5/export et le dépôt ou jar de Mekanism: Engineering.
3. Claude doit **résoudre et figer** les versions dans un vrai lockfile, installer progressivement, tester et rapporter les écarts.
4. Ne pas considérer ce manifeste comme une garantie de lancement réussi.
