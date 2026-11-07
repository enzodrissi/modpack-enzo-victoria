# Mission Claude Code — assembler et valider le modpack Enzo + Victoria

Tu agis comme mainteneur de modpack Minecraft NeoForge et ingénieur de validation. Lis intégralement `MODPACK_MANIFEST.md` et `MODS_MANIFEST.csv` joints. Les valeurs indiquées sont des **candidats**, pas un environnement vérifié. Ne les présente jamais comme testées sans exécution réelle. Évite toute question si les éléments existent dans les fichiers : avance de façon autonome et documente les hypothèses.

## Objectif produit
Créer une instance **Minecraft 1.21.1, NeoForge, Java 21**, jouable en survie à deux sur serveur dédié, issue de la philosophie ATM10 mais moins contraignante. Conserver la profondeur AE2/Mekanism, y compris AdvancedAE, Evolved Mekanism, Mekanism Extras, Evolved Mekanism Extras, Mekanism: Engineering, More Thermal Evaporation, JDT Time Accelerators ; abeilles industrielles et leurs intégrations ; Allthemodium/Vibranium/Unobtainium et fours ; exploration, animaux/zoo, décoration, construction et Prefab. Victoria doit pouvoir progresser dans le jeu sans devoir maîtriser la technique.

## Contrats incontournables
- **Pas** de Waystones, Corail Tombstone, Mekanism Unleashed, Better Fusion Reactor, Apothic Enchanting, Not Enough Animations, mods de caméra/corps intrusifs.
- **Oui** à `/tpa`, `/home`, `/sethome` avec FTB Essentials ; sauvegardes régulières.
- **Oui** à WATUT (états inventaire/chat), avec confidentialité de la saisie des commandes.
- **Enchantements** : choisir directement, dans l'interface Enchanting Infuser, l'enchantement et un niveau jusqu'à **Sharpness XV, Efficiency XV**, etc. Le prix doit croître avec le niveau XP. Overflow Enchantments ou datapack seuls ne garantissent pas cette fonctionnalité ; si l'API ou le GUI bloque, proposer un patch/addon minimal avec tests et diffs. Ne pas déclarer réussite sans essai GUI serveur.
- **ATM** : reprendre génération des trois minerais, dimensions, OreSight, crafts pertinents des fours Iron Furnaces, alliages ; **ne pas** imposer ATM Star ni coûts artificiellement élevés pour le Digital Miner.
- **Performance** : ImmediatelyFast 1.6.15 (client, NeoForge 1.21.1), Entity Culling 1.11.3, More Culling 1.0.11, AllTheLeaks 1.1.12, Lithium 0.15.4, Clumps 19.0.0.1 à contrôler contre l'existant ; conserver Sodium, ModernFix, FerriteCore et spark si compatibilité validée. C2ME/BadOptimizations sont expérimentaux, uniquement après benchmark. Sodium/Embeddium mutuellement exclusifs. Aucune optimisation ne doit casser les textures, la simulation ou l'autocrafting.

## Phase 0 — Préservation, sources et inventaire
1. Ne jamais modifier l'instance ATM10 d'origine. Créer un dossier de travail distinct et une sauvegarde/branche Git. Inspecter Java, NeoForge, RAM, OS, sources de mods, configs et scripts disponibles.
2. Consulter le manifeste du profil officiel ATM10 **8.5** et les pages originales CurseForge/Modrinth/GitHub, mod par mod. Vérifier que chaque **fichier exact** cible 1.21.1 **NeoForge**, ses dépendances, min/max versions des API, client/server et licence. Un nom de mod ou une version seule n'est pas une preuve de compatibilité.
3. Produire `resolved-mods.csv` (nom, modid, projet, version, filename, loader, MC, client/server, dépendances, URL officielle, SHA-256, source), `dependency-report.md` et `mod-version-diff.md` (écarts par rapport aux versions candidates). Si accès réseau/API impossible, sortir une liste bloquée explicite plutôt que d'inventer des archives.
4. Proposer des lots séquentiels : base technique → Abeilles/ATM → exploration/décoration → QoL → performance. Une étape ne passe qu'avec lancement client ET serveur.

## Phase 1 — Installation progressive et validation smoke
- Installer sans fichiers en double, résoudre dépendances et distinguer les client-only pour ne pas les placer sur serveur.
- Construire une instance client et un serveur local isolé. Vérifier bootstrap, registries, chargement config, création/chargement monde, handshake, connexion simultanée de **deux clients**, sauvegarde/reconnexion et fermeture propre.
- Scanner `latest.log`, `debug.log`, crash reports et erreurs mixin. Chaque crash : minimiser le jeu de mods par recherche dichotomique (binary search), donner stacktrace courte, cause et correctif reproductible.
- Générer un rapport PASS/FAIL/SKIP par catégorie ; SKIP inclut toujours l'explication.

## Phase 2 — Fonctions gameplay à contrôler
1. **Mekanism/AE2 :** recettes et GUI de chaque tier Evolved/Mekanism Extras, multiblocs, autocrafting ExtendedAE/AdvancedAE, Applied Mekanistics, import/export d'items, fluides et chemicals ; pas de doublons de recettes, de dupes, ni d'items perdus. Tester les 11/13/15/17 lignes parallèles lorsqu'applicables. En cas d'incompatibilité, privilégier les versions simultanément fonctionnelles plutôt que les dernières.
2. **Mekanism: Engineering :** tests sur pompage, énergie, transport, interaction Evolved. Time Wand + JDT Time Accelerators : limiter accélération pour éviter tps bas, duplication ou dépassement d'entiers.
3. **Fusion :** mesurer séparément eau→brine→lithium→tritium, eau lourde→deutérium, conduite et entrée réacteur. Tester tours de base et More Thermal Evaporation, réglages de chaleur/capacité, solaire de jour et stockage nocturne, enregistrement des débits réels **mB/t**. Utiliser le pump moddé et relever les valeurs de la config ; ne pas modifier `general.toml` / `generators.toml` à l'aveugle. Objectifs : fonctionnement à 20 puis 98 mB/t d'injection (si mécanisme applicable), marge de production >= 25 % en régime stable, pas de panne sur au moins 3 cycles jour/nuit simulés en jeu ; documenter toute impossibilité. Tester le D-T fuel direct séparément (il n'a pas les mêmes plafonds que l'injection interne).
4. **Abeilles :** Productive Bees, ModularBees, Genesis, croisements, apiaries, centrifugeuses, extractions auto, chaînes ressources ATM, simulations de grosses fermes et étude TPS ; ne pas générer de centaines d'entités en continu.
5. **Allthemodium :** trois minerais spawn dans les bonnes dimensions/biomes, OreSight détecte les types, fours Allthemodium/Vibranium/Unobtainium + Rainbow Furnace, recettes accessibles sans ATM Star forcée, Digital Miner recette raisonnable.
6. **Enchantements :** prouver via capture/logs qu'Enchanting Infuser affiche explicitement Sharpness I..XV et Efficiency I..XV, que l'XP est déduit correctement et que le niveau XV reste valide après reconnexion, réparation, enclume, combat et redémarrage. Si échec, fournir issue/patch minimal, tests unitaires/intégration, procédure de rollback.
7. **Prefab et Victoria :** placement de structures Prefab, permissions FTB Teams/Chunks, WATUT, zoo (spawns, capture, enclos), décoration, exploration, nouvelles dimensions, deux joueurs coopératifs, TP et sauvegardes. Recherche de chunks/biomes et absence de conflits de worldgen.

## Phase 3 — Performance, mesures reproductibles
- Relever **avant et après chaque ajout** : FPS moyenne, 1% lows, p95/p99 frame time, TPS et MSPT p50/p95/p99, RAM client/serveur, pauses GC, temps boot, durée génération 1 000 chunks (ou périmètre explicitement fixé), latence réseau, rythme sauvegarde. Mesurer machine/OS/JVM/settings identiques.
- Scénarios : monde vierge, exploration nouveaux biomes, zoo dense, ferme d'abeilles, usine Mekanism à pleine vitesse, réacteur et solaire, 10+ grands autocraftings AE2, activation d'accélérateurs temporels, deux clients simultanés, session prolongée. Utiliser `spark` pour identifier la vraie cause des ralentissements.
- Commencer avec Sodium + ImmediatelyFast + ModernFix + FerriteCore ; puis Entity Culling, More Culling, AllTheLeaks, Lithium, Clumps par lots mesurés ; expérimenter C2ME/BadOptimizations/ServerCore un par un et uniquement s'ils améliorent le cas réel. Vérifier les incompatibilités avec Regions Unexplored, FramedBlocks, Chipped, AE2 et shaders.
- Critères de sortie **indicatifs** (adapter à hardware et baseline, expliciter) : serveur 20 TPS en charge normale, MSPT moyen < 40 ms et p95 < 50 ms, aucun crash/fuite/duplication, aucune dégradation visuelle ou fonctionnelle. Ne pas optimiser un chiffre en détruisant les fonctionnalités.

## Phase 4 — Équilibrage et livrables
- Produire un diff précis des fichiers de configuration : chaque paramètre (ancien → nouveau, raison, impact prévu, résultats en benchmark). Les crafts KubeJS doivent être personnalisés proprement, pas un import aveugle d'ATM10.
- Livrer `mods.lock.csv` (fichiers et SHA-256 vérifiés), l'arborescence d'instance, `config/`, `kubejs/`, `defaultconfigs/`, datapacks, éventuel addon d'enchantement **seulement s'il est nécessaire**, scripts de lancement client/serveur, `README_INSTALL.md`, `PERF_BENCHMARKS.md`, `TEST_REPORT.md` et `KNOWN_ISSUES.md`.
- `TEST_REPORT.md` : tableau Test / Environnement / Étapes / Résultat / Preuve / Sévérité / Prochaine action. Ne jamais prétendre « validé » si non exécuté. Marquer `BLOCKED` lorsque des sources, fichiers ou machines sont manquants.
- Conclusion exigée : GO / NO-GO pour la survie définitive, liste des bloqueurs P0/P1, et réglages retenus. Prévoir procédure de migration, backups et restauration.

## Mode de travail
- Agis de manière itérative, conserve journaux et commits par phase. Privilégie des changements petits, vérifiables et réversibles.
- Réduis les questions ; décide de façon argumentée quand tu disposes des informations. Demande uniquement les ressources indispensables qui manquent (archive originale ATM10, jar/repo du mod maison, droits réseau, etc.).
- Fournis toutes les commandes shell proposées **sur une seule ligne chacune**, sans continuation avec antislash `\`.
- Ne télécharge que depuis les sources officielles, respecte licences et conditions de redistribution. Ne dis pas avoir exécuté de benchmark sans preuve produite.

**Commence maintenant par la phase 0, puis réalise les phases exécutables dans cet environnement.**
