
/*Question 1: Afficher la liste des pays ou simplon est présent */
MariaDB [simplon]> select distinct pays.nom from pays inner join fabrique on pays.id = fabrique.id_pays;
+-----------+
| nom       |
+-----------+
| Sénégal   |
| Maroc     |
+-----------+
2 rows in set (0.06 sec)

/*Question 2: Afficher la liste des fabriques de la ville de Dakar */
MariaDB [simplon]> select nom from fabrique where ville='Dakar';
+----------------+
| nom            |
+----------------+
| Simplon Dakar  |
| Orange Academy |
+----------------+

/*Question 3: Afficher la liste des pays qui ont au moins deux fabriques */
MariaDB [simplon]> select nom from pays where nombre_fabrique >=2;

/*Question 4: Afficher le nombre d'apprenants par fabrique */

/*Question 5: Afficher le nombre de référentiels par fabrique */

/*Question 6: Afficher la liste des apprenants qui ont au moins un contrat */
MariaDB [simplon]> select * from apprenant  left join contrat on id_apprenant = contrat.id_apprenant and situation_professionnelle = 'Employer';

+----+---------+--------+-----------+---------------+----------------+------+-------------------+------------+----------------+------------+-------------+------+---------------------------+-------------------+--------------+------------+------------+------------------+--------------+
| id | nom     | prenom | statut    | nationalite   | date_naissance | sexe | email             | tel        | id_referentiel | id_cohorte | id_fabrique | id   | situation_professionnelle | poste             | type_contrat | date_debut | date_fin   | nom_structure    | id_apprenant |
+----+---------+--------+-----------+---------------+----------------+------+-------------------+------------+----------------+------------+-------------+------+---------------------------+-------------------+--------------+------------+------------+------------------+--------------+
|  2 | NIANG   | Cheikh | étudiant  | Sénégalaise   | 1994-09-14     |    1 | cheikh@simplon.co | 2147483647 |              1 |          1 |           1 |    1 | Employer                  | Community Manager | CDD          | 2019-01-12 | 2019-09-12 | Bouygues Telecom |            3 |
|  3 | AHMAD   | Bachir | alumni    | Marocaine     | 1990-11-01     |    1 | ahmad@simplon.co  |  212987655 |              2 |          2 |           2 |    1 | Employer                  | Community Manager | CDD          | 2019-01-12 | 2019-09-12 | Bouygues Telecom |            3 |
|  5 | BOLASIE | Marie  | alumni    | Congolaise    | 1995-12-27     |    1 | marie@simplon.co  |  212987655 |              2 |          2 |           2 |    1 | Employer                  | Community Manager | CDD          | 2019-01-12 | 2019-09-12 | Bouygues Telecom |            3 |
+----+---------+--------+-----------+---------------+----------------+------+-------------------+------------+----------------+------------+-------------+------+---------------------------+-------------------+--------------+------------+------------+------------------+--------------+


/*Question 7: Ecrire l'ordre SQL qui permet de d'ajouter un nouveau champ ouvert de type boolén à la table cohorte*/
MariaDB [simplon]> alter table cohorte add ouvert boolean;

+------------------+------------+------+-----+---------+----------------+
| Field            | Type       | Null | Key | Default | Extra          |
+------------------+------------+------+-----+---------+----------------+
| id               | int(11)    | NO   | PRI | NULL    | auto_increment |
| date_debut       | date       | NO   |     | NULL    |                |
| date_fin         | date       | NO   |     | NULL    |                |
| nombre_apprenant | int(11)    | NO   |     | NULL    |                |
| ouvert           | tinyint(1) | YES  |     | NULL    |                |
+------------------+------------+------+-----+---------+----------------+



/*Question 8: Modifier le type du champ sexe, mettre char 1 au lieu de boolén */
MariaDB [simplon]> alter table apprenant change sexe sexe char(1);

MariaDB [simplon]> desc apprenant;
+----------------+-------------+------+-----+---------+----------------+
| Field          | Type        | Null | Key | Default | Extra          |
+----------------+-------------+------+-----+---------+----------------+
| id             | int(11)     | NO   | PRI | NULL    | auto_increment |
| nom            | varchar(45) | NO   |     | NULL    |                |
| prenom         | varchar(45) | NO   |     | NULL    |                |
| statut         | varchar(45) | NO   |     | NULL    |                |
| nationalite    | varchar(45) | YES  |     | NULL    |                |
| date_naissance | date        | NO   |     | NULL    |                |
| sexe           | char(1)     | YES  |     | NULL    |                |
| email          | varchar(45) | NO   |     | NULL    |                |
| tel            | int(11)     | NO   |     | NULL    |                |
| id_referentiel | int(11)     | NO   | MUL | NULL    |                |
| id_cohorte     | int(11)     | NO   | MUL | NULL    |                |
| id_fabrique    | int(11)     | NO   | MUL | NULL    |                |
+----------------+-------------+------+-----+---------+----------------+


