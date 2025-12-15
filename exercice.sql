EXPLAIN
SELECT e.nom, e.prenom, c.nom_cours, i.date_inscription
FROM ETUDIANT e
JOIN INSCRIPTION i ON e.id = i.etudiant_id
JOIN COURS c ON i.cours_id = c.id
WHERE e.nom LIKE 'D%'
ORDER BY i.date_inscription DESC;

ALTER TABLE ETUDIANT ADD INDEX idx_nom_prenom(nom, prenom);

EXPLAIN
SELECT e.nom, e.prenom, c.nom_cours, i.date_inscription
FROM ETUDIANT e
JOIN INSCRIPTION i ON e.id = i.etudiant_id
JOIN COURS c ON i.cours_id = c.id
WHERE e.nom LIKE 'D%'
ORDER BY i.date_inscription DESC;

DROP TABLE IF EXISTS EXAMEN_COPY;
CREATE TABLE EXAMEN_COPY LIKE EXAMEN;
INSERT INTO EXAMEN_COPY SELECT * FROM EXAMEN;
SELECT COUNT(*) FROM EXAMEN_COPY;