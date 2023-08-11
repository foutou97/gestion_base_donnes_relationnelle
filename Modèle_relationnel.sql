

USE gestion_vignoble;
GO
--covertir le diagramme en modèle relationnel

CREATE TABLE vin (
id_vin INT PRIMARY KEY,
Categorie VARCHAR(50) NOT NULL,
Annee INT NOT NULL, 
Degre DECIMAL(4, 2)NOT NULL
);

CREATE TABLE producteurs (
id_producteur INT PRIMARY KEY,
Prenom VARCHAR(50) NOT NULL,
Nom VARCHAR(50) NOT NULL,
Region VARCHAR(50) NOT NULL
);

CREATE TABLE recolte (
id_vin INT NOT NULL,
id_producteur INT NOT NULL,
Quantite INT NOT NULL,
FOREIGN KEY (id_vin) REFERENCES vin(id_vin),
FOREIGN KEY (id_producteur) REFERENCES producteurs(id_producteur)

);


