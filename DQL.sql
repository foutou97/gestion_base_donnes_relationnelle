USE gestion_vignoble;
GO
-- Liste des producteurs

SELECT * FROM producteurs;

-- Liste des producteurs ti�s par nom

SELECT * FROM producteurs ORDER BY Nom;

--Liste des producteurs de Sousse

SELECT * FROM producteurs WHERE Region = 'sousse';

--Calcluer la quantit� totale de vin produit portant le num�ro 12 

SELECT SUM(Quantite) AS quantite_totale
FROM recolte 
WHERE id_vin = 12;

-- Calculer la quantit� de vin produit par cat�gorie

SELECT v.categorie, SUM(r.quantite) AS quantite_totale
FROM vin v
JOIN recolte r ON v.id_vin = r.id_vin
GROUP BY v.Categorie;

-- producteurs de la region de Sousse ayant r�colt� au moins un vin en quantit� superieurses � 300 litres, tri�s par ordre alphab�tique

SELECT P.Prenom, P.Nom
FROM producteurs p
JOIN recolte r ON p.id_producteur = r.id_producteur
JOIN vin V ON r.id_vin = v.id_vin
WHERE P.Region = 'Sousse' AND r.Quantite > 300 
ORDER BY p.Nom, p.Prenom;
-- Num�ros de vin avec un degr� superieur � 12, produits par le producteur num�ro 24
SELECT v.id_vin
FROM vin v 
JOIN recolte r ON v.id_vin = r.id_vin
WHERE v.Degre >12 AND r.id_producteur = 24; 