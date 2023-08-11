USE gestion_vignoble;
GO
INSERT INTO producteurs( id_producteur,Prenom, Nom, Region)
VALUES 
(1, 'Jean pierre ', 'Foutou', 'Sousse'),
(2, 'exaucé ', 'Foutou Moumbouilou', 'Tunis'),
(3, 'Francine ', 'Kosso', 'Sfax'),
(4, 'Kodjo', 'Fall', 'Sousse'),
(5, 'Rachid ', 'Mabikana', 'Nice');

INSERT INTO vin (id_vin, Categorie, Annee, Degre)
VALUES
(10, 'Rouge', 2019, 14.5),
(11, 'Blanc', 2020, 12.0),
(12, 'Rosé', 2021, 10.8),
(13, 'Rouge', 2018, 14.5),
(14, 'Blanc', 2022, 11.5);

INSERT INTO recolte (id_vin, id_producteur,Quantite)
VALUES 
(10, 1, 500),
(11, 2, 300),
(12, 3, 400),
(13, 4, 250),
(14, 5, 350);


