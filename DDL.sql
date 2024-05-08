--Change to kathrynriley Database
USE kathrynriley;

--Drop existing tables
Drop TABLE IF EXISTS genome_info;
Drop TABLE IF EXISTS genome_fastas;
--Add DDL to create tables

CREATE TABLE genome_info(
	Accession VARCHAR(20),
	Organism_name VARCHAR(100),
	Submitters VARCHAR(200),
	Organization VARCHAR(200),
	Org_location VARCHAR(20),
	Release_Date DATE,
	Isolate VARCHAR(30),
	Species VARCHAR(40),
	Nuc_completeness VARCHAR(40),
	Geo_Location VARCHAR(40),
	Host VARCHAR(20),
	Isolation_source VARCHAR(20),
	Collection_Date DATE,
	PRIMARY KEY (Accession,Isolate)
);

CREATE TABLE genome_fastas(
	Accession VARCHAR(20),
	Isolate VARCHAR(20),
	FASTA VARCHAR(9999),
	PRIMARY KEY (Accession)
);

