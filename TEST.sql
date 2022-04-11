/*Retourne le nom des équipes et le nombre de joueurs par équipe, le tout classé par nombre de joueurs par équipe, de la plus nombreuse à la moins nombreuse.*/

SELECT t.name, COUNT(*) AS nb_player
FROM player p
INNER JOIN team t ON t.id=p.team_id
GROUP BY name
ORDER BY nb_player DESC;


/*Retourne uniquement les noms des équipes complètes (ayant 14 joueurs ou plus, c’est-à- dire 7 joueurs et 7 remplaçants minimum), classés par ordre alphabétique.*/



