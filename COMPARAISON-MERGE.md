# Comparaison : Squash and merge et Rebase and merge

## 1. Squash and merge

**Principe :** regroupe tous les commits d'une Pull Request en un seul commit sur la branche cible.

**Avantages :**
- Historique plus simple et plus lisible.
- Une fonctionnalité est représentée par un seul commit.
- Facilite la lecture de l'historique du projet.

**Inconvénient :**
- Les commits individuels de la branche de fonctionnalité ne sont pas conservés comme commits distincts dans l'historique de la branche cible.

## 2. Rebase and merge

**Principe :** rejoue les commits de la branche de fonctionnalité sur la branche cible, sans créer de commit de merge classique.

**Avantages :**
- Conserve les commits individuels de la fonctionnalité.
- Produit un historique linéaire.
- Permet de suivre les étapes de développement.

**Inconvénient :**
- L'historique peut devenir plus long si la branche contient beaucoup de petits commits.
- Le rebase réécrit les identifiants des commits rejoués.

## 3. Tableau comparatif

| Critère | Squash and merge | Rebase and merge |
|---|---|---|
| Nombre de commits sur la branche cible | Un commit regroupé | Plusieurs commits rejoués |
| Historique | Compact | Détaillé et linéaire |
| Traçabilité des étapes | Plus limitée dans l'historique cible | Meilleure au niveau des commits |
| Commit de merge classique | Non | Non |

## 4. Exemple dans le TP4

Dans ce TP, la Pull Request #4, intitulée feat(firewall): add filtering rules, a été fusionnée avec **Squash and merge**.

Le commit résultant est c07a1b1. La fonctionnalité est ainsi représentée par un seul commit dans l'historique de main.

Avec **Rebase and merge**, les commits de la branche auraient été rejoués individuellement sur main.

## 5. Conclusion

Squash and merge convient lorsqu'on souhaite garder un historique compact, notamment pour les petites fonctionnalités. Rebase and merge est utile lorsqu'on veut conserver le détail des commits tout en maintenant un historique linéaire.

Le choix dépend des conventions de l'équipe et du niveau de détail souhaité dans l'historique Git.
