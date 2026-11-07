# Livrables pour Claude Code

- `MODPACK_MANIFEST.md` : sélection complète des mods, versions **candidates**, exclusions, dépendances, sources.
- `MODS_MANIFEST.csv` : même inventaire en format exploitable (CSV UTF-8 BOM, séparateur `;`).
- `PROMPT_CLAUDE_TESTS.md` : prompt prêt à coller dans Claude Code pour vérifier, assembler, tester et optimiser le modpack.

**Ces fichiers ne contiennent aucun mod `.jar`.** Les versions candidate ne remplacent pas la résolution de dépendances. L'instance n'a pas encore été démarrée ou benchmarkée.

## Mode d'emploi
Place ces trois fichiers dans le dossier de travail auquel Claude Code a accès. Colle ensuite le contenu de `PROMPT_CLAUDE_TESTS.md` dans la conversation avec Claude. Si possible, fournis aussi une exportation de la version ATM10 de référence et le jar ou le dépôt du mod Mekanism: Engineering.
