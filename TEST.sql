/*Retourne le nom des équipes et le nombre de joueurs par équipe, le tout classé par nombre de joueurs par équipe, de la plus nombreuse à la moins nombreuse.*/

SELECT t.name, COUNT(*) AS nb_player
FROM player p
INNER JOIN team t ON t.id=p.team_id
GROUP BY name
ORDER BY nb_player DESC;


/*Retourne uniquement les noms des équipes complètes (ayant 14 joueurs ou plus, c’est-à- dire 7 joueurs et 7 remplaçants minimum), classés par ordre alphabétique.*/

SELECT t.name, COUNT(wizard_id) AS nb_player
     FROM player p
     INNER JOIN team t ON t.id=p.team_id
     GROUP BY name
     HAVING nb_player > 14 
     ORDER BY nb_player DESC;
     
   
/*L’entraîneur des Gryffindor est superstitieux, son jour préféré est le lundi. Retourne la liste des joueurs de son équipe qui ont été enrôlés un lundi (il souhaite les faire jouer en priorité), et classe les résultats par date d’enrôlement chronologique.*/

SELECT w.firstname, w.lastname, p.enrollment_date
FROM player p
INNER JOIN wizard w ON wizard_id=w.id
INNER JOIN team t ON team_id=t.id
WHERE name = 'Gryffindor'
AND DAYOFWEEK(enrollment_date) = 2
ORDER BY enrollment_date ASC;   
     
     
     
     

