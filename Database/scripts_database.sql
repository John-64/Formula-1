USE Formula1;

-- Check visualizzazione e modifica
SELECT *
FROM Dipendente d, Pilota p
WHERE d.Matricola = p.Dipendete_matricola;

-- Check cancellazione
SELECT *
FROM Circuito;

-- 1) Una selezione ordinata su un attributo di una tabella con condizioni AND e OR;
-- 1) Elencare le scuderie che hanno partecipato sia all'edizione 72 che 73 (Nome scuderia, Anno fondazione)
SELECT DISTINCT s.Nome, s.Anno_fondazione
FROM Scuderia s, Partecipazione p, Mondiale m
WHERE m.Edizione = p.Mondiale_edizione AND s.Nome = p.Scuderia_nome 
AND (m.Edizione = 72 OR m.edizione = 73)
ORDER BY s.Nome ASC;


-- 2) Una selezione su due o più tabelle con condizioni;
-- 2) Elencare le Scuderie che hanno Partecipato all'edizione del Mondiale numero 73 (Nome scuderia)
SELECT s.Nome
FROM Scuderia s, Partecipazione p
WHERE s.Nome = p.Scuderia_nome
AND p.Mondiale_edizione = 73;


-- 3) Una selezione aggregata su tutti i valori
-- 3) Elencare il Salario medio dei Team Principal (Salario medio)
SELECT CAST(AVG (t.salario) AS DECIMAL (10,0)) AS SalarioMedio 
FROM TeamPrincipal t;


-- 4) Una selezione aggregata su raggruppamenti 
-- 4) Elencare il numero di volte che le Scuderie hanno Partecipato ad un mondiale. (Nome scuderia, Numero partecipazioni)
SELECT s.Nome, count(*) as NumeroPartecipazioni
FROM Scuderia s, Partecipazione p
WHERE s.Nome = p.Scuderia_nome
GROUP BY s.Nome
ORDER BY NumeroPartecipazioni DESC;


-- 5) Una selezione aggregata su raggruppamenti con condizioni
-- 5) Elencare i piloti che hanno ottenuto almeno un podio ed il relativo numero. (Nome pilota, Numero podi)
SELECT d.Nome, d.Cognome, count(*) as NumeroPodi
FROM Dipendente d, Pilota p, Gara g
WHERE d.Matricola = p.Dipendete_matricola AND p.Dipendete_matricola = g.Pilota_dipendete_matricola 
AND g.posizione <= 3
GROUP BY d.Nome, d.Cognome
HAVING NumeroPodi >= 0
ORDER BY NumeroPodi DESC;


-- 6) Una selezione aggregata su raggruppamenti con condizioni che includano un’altra funzione di raggruppamento
-- 6) Elencare il pilota che ha ottenuto il maggior numero di vittorie. (Nome pilota, Cognome pilota, Numero vittorie)
SELECT d.Nome, d.Cognome, count(*) as NumeroVittorie
FROM Dipendente d, Pilota p, Gara g
WHERE d.Matricola = p.Dipendete_matricola AND p.Dipendete_matricola = g.Pilota_dipendete_matricola 
AND g.posizione = 1
GROUP BY d.Nome, d.Cognome
HAVING NumeroVittorie >= ALL (SELECT count(*)
							  FROM Dipendente d, Pilota p, Gara g
							  WHERE d.Matricola = p.Dipendete_matricola AND p.Dipendete_matricola = g.Pilota_dipendete_matricola 
							  AND g.posizione = 1
							  GROUP BY d.Nome, d.Cognome);

-- Soluzione analoga con la vista

DROP VIEW IF EXISTS Conteggio;
CREATE VIEW Conteggio AS
SELECT d.Nome, d.Cognome, count(*) as NumeroVittorie
FROM Dipendente d, Pilota p, Gara g
WHERE d.Matricola = p.Dipendete_matricola AND p.Dipendete_matricola = g.Pilota_dipendete_matricola AND g.posizione = 1
GROUP BY d.Nome, d.Cognome;

SELECT * FROM Conteggio c HAVING NumeroVittorie >= ALL (SELECT NumeroVittorie FROM Conteggio);


-- 7) Una selezione con operazioni sugli insiemi
-- 7) Elencare le scuderie che NON hanno mai partecipato ad un mondiale. (Nome scuderia, Anno fondazione)
SELECT DISTINCT s.Nome, s.Anno_fondazione
FROM Scuderia s
WHERE s.Nome NOT IN (SELECT s.Nome
				     FROM Scuderia s, Partecipazione p, Mondiale m
				     WHERE m.Edizione = p.Mondiale_edizione AND s.Nome = p.Scuderia_nome);


-- 8) Una selezione con l’uso appropriato del doppio not Exists
-- 8) Elencare i Piloti che hanno Gareggiato su tutti i Circuiti (Nome, Cognome)
SELECT d.Nome, d.Cognome
FROM Pilota p, Dipendente d
WHERE d.Matricola = p.Dipendete_matricola 
AND NOT EXISTS (SELECT *
				FROM Circuito c
				WHERE NOT EXISTS (SELECT *
								  FROM Gara g
								  WHERE p.Dipendete_matricola = g.Pilota_dipendete_matricola
								  AND g.Circuito_nome = c.Nome));