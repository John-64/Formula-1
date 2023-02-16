DROP DATABASE IF EXISTS Formula1;
CREATE DATABASE Formula1;
USE Formula1;

CREATE TABLE Mondiale (
	Edizione INT NOT NULL,
    Descrizione CHAR(255) NOT NULL,
	PRIMARY KEY (Edizione)
);

CREATE TABLE Regolamento (
	Codice INT NOT NULL,
	Regole CHAR(255),
    Spiegazione CHAR(255),
	PRIMARY KEY (Codice)
);
	
CREATE TABLE Vettura (
	Mondiale_edizione INT NOT NULL,
	Nome CHAR(100) NOT NULL,
	Numero INT NOT NULL,
    Cavalli INT NOT NULL,
    FOREIGN KEY (Mondiale_edizione) REFERENCES Mondiale(Edizione),
	PRIMARY KEY (Mondiale_edizione, Numero)
);

CREATE TABLE Scuderia (
	Nome CHAR(50) NOT NULL,
    Anno_fondazione INT NOT NULL,
    PRIMARY KEY (Nome)
);

CREATE TABLE Partecipazione (
	Mondiale_edizione INT NOT NULL,
	Scuderia_nome CHAR(100) NOT NULL,
    FOREIGN KEY (Mondiale_edizione) REFERENCES Mondiale(Edizione),
    FOREIGN KEY (Scuderia_nome) REFERENCES Scuderia(Nome),
    PRIMARY KEY (Mondiale_edizione, Scuderia_nome)
);

CREATE TABLE Team (
	Scuderia_nome CHAR(50) NOT NULL,
	Settore CHAR(50) NOT NULL,
    Numero_dipendenti INT NOT NULL,
    FOREIGN KEY (Scuderia_nome) REFERENCES Scuderia(Nome),
    PRIMARY KEY (Scuderia_nome, Settore)
);

CREATE TABLE Sviluppare (
	Mondiale_edizione INT NOT NULL,
    Vettura_numero INT NOT NULL,
    Scuderia_nome CHAR(50) NOT NULL,
	Settore CHAR(50) NOT NULL,
    FOREIGN KEY (Mondiale_edizione, Vettura_numero) REFERENCES Vettura(Mondiale_edizione, Numero),
    FOREIGN KEY (Scuderia_nome, Settore) REFERENCES Team(Scuderia_nome, Settore),
    PRIMARY KEY (Mondiale_edizione, Vettura_numero, Scuderia_nome, Settore)
);

CREATE TABLE Dipendente (
	Matricola CHAR(5) NOT NULL,
    Nome CHAR(50) NOT NULL,
    Cognome CHAR(50) NOT NULL,
    Data_nascita DATE NOT NULL,
    PRIMARY KEY (Matricola)
);

CREATE TABLE Pilota (
	Dipendete_matricola CHAR(5) NOT NULL,
    BMI_Peso INT NOT NULL,
    BMI_Altezza INT NOT NULL,
    Percentuale_vittoria INT NOT NULL,
    FOREIGN KEY (Dipendete_matricola) REFERENCES Dipendente(Matricola),
    PRIMARY KEY (Dipendete_matricola)
);

CREATE TABLE TeamPrincipal (
	Dipendete_matricola CHAR(5) NOT NULL,
    Salario INT NOT NULL,
    FOREIGN KEY (Dipendete_matricola) REFERENCES Dipendente(Matricola),
    PRIMARY KEY (Dipendete_matricola)
);
    
CREATE TABLE Lavorare (
	Team_scuderia_nome CHAR(50) NOT NULL,
    Team_settore CHAR(50) NOT NULL,
    Dipendente_matricola CHAR(5) NOT NULL,
    Data_inizio DATE NOT NULL,
    Data_fine DATE NOT NULL,
    FOREIGN KEY (Team_scuderia_nome, Team_settore) REFERENCES Team(Scuderia_nome, Settore),
    FOREIGN KEY (Dipendente_matricola) REFERENCES Dipendente(Matricola),
    PRIMARY KEY (Team_scuderia_nome, Team_settore, Dipendente_matricola, Data_inizio, Data_fine)
);

CREATE TABLE Circuito (
    Nome CHAR(100) NOT NULL,
	Nazione CHAR(50) NOT NULL,
    PRIMARY KEY (Nome)
);

CREATE TABLE Gara (
	Data_gara DATE NOT NULL,
    Circuito_nome CHAR(100) NOT NULL,
    Pilota_dipendete_matricola CHAR(5) NOT NULL,
    Posizione INT NOT NULL,
    Punteggio INT NOT NULL,
    FOREIGN KEY (Circuito_nome) REFERENCES Circuito(Nome) ON DELETE CASCADE,
    FOREIGN KEY (Pilota_dipendete_matricola) REFERENCES Pilota(Dipendete_matricola) ON DELETE CASCADE,
    PRIMARY KEY (Data_gara, Circuito_nome, Pilota_dipendete_matricola)
);