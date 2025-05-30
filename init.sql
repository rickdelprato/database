SET storage_engine=InnoDB;
SET FOREIGN_KEY_CHECKS=1;

DROP DATABASE IF EXISTS miraDB;

CREATE DATABASE IF NOT EXISTS miraDB;

USE miraDB;

CREATE TABLE IF NOT EXISTS Artisti (
    IdArtista INT PRIMARY KEY AUTO_INCREMENT,
    Cognome VARCHAR(50) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Pseudonimo VARCHAR(50) NOT NULL,
    DataNascita DATE NOT NULL,
    LuogoNascita VARCHAR(50) NOT NULL,
    DataMorte DATE,
    LuogoMorte VARCHAR(50),
    Stile VARCHAR(50) NOT NULL,
    Nazionalita VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Biografie (
    IdArtista INT REFERENCES Artisti(IdArtista),
    Lingua VARCHAR(50) NOT NULL,
    Testo TEXT NOT NULL,
    PRIMARY KEY (IdArtista, Lingua),
    FOREIGN KEY (IdArtista) REFERENCES Artisti(IdArtista)
);

CREATE TABLE IF NOT EXISTS Opere (
    IdOpera INT PRIMARY KEY AUTO_INCREMENT,
    NomeOpera VARCHAR(50) NOT NULL,
    PeriodoRealizzazione VARCHAR(50) NOT NULL,
    Tipologia VARCHAR(50) NOT NULL,
    Altezza INT NOT NULL CHECK (Altezza > 0),
    Proprietario VARCHAR(50) NOT NULL,
    DetentoreDiritti VARCHAR(50) NOT NULL,
    LinkVideo VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS DescrizioniOpere (
    IdOpera INT REFERENCES Opere(IdOpera),
    Lingua VARCHAR(50) NOT NULL,
    Testo TEXT NOT NULL,
    PRIMARY KEY (IdOpera, Lingua),
    FOREIGN KEY (IdOpera) REFERENCES Opere(IdOpera)
);

CREATE TABLE IF NOT EXISTS Creazioni (
    IdArtista INT,
    IdOpera INT,
    PRIMARY KEY (IdArtista, IdOpera),
    FOREIGN KEY (IdArtista) REFERENCES Artisti(IdArtista),
    FOREIGN KEY (IdOpera) REFERENCES Opere(IdOpera)
);

CREATE TABLE IF NOT EXISTS Posizioni (
    Latitudine DECIMAL(9,6) NOT NULL CHECK (Latitudine BETWEEN -90 AND 90),
    Longitudine DECIMAL(9,6) NOT NULL CHECK (Longitudine BETWEEN -180 AND 180),
    Indirizzo VARCHAR(255) NOT NULL,
    Citta VARCHAR(50) NOT NULL,
    DataCollocazione DATE,
    IdOpera INT,
    FOREIGN KEY (IdOpera) REFERENCES Opere(IdOpera),
    PRIMARY KEY (Latitudine, Longitudine)
);

CREATE TABLE IF NOT EXISTS Itinerari (
    IdItinerario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Percorsi (
    Opera INT REFERENCES Opere(IdOpera),
    Itinerario INT NOT NULL,
    NumOrdine INT NOT NULL CHECK (NumOrdine > 0),
    PRIMARY KEY (Opera, Itinerario),
    FOREIGN KEY (Itinerario) REFERENCES Itinerari(IdItinerario)
);

CREATE TABLE IF NOT EXISTS Materiali (
    IdMateriale INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS MaterialiOpere (
    IdOpera INT,
    IdMateriale INT,
    PRIMARY KEY (IdOpera, IdMateriale),
    FOREIGN KEY (IdOpera) REFERENCES Opere(IdOpera),
    FOREIGN KEY (IdMateriale) REFERENCES Materiali(IdMateriale)
);

CREATE TABLE IF NOT EXISTS Foto (
    IdFoto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Link VARCHAR(255) NOT NULL,
    Opera INT NOT NULL,
    FOREIGN KEY (Opera) REFERENCES Opere(IdOpera)
);

CREATE TABLE IF NOT EXISTS Soggetti (
    IdSoggetto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS SoggettiRappresentati (
    IdSoggetto INT,
    IdOpera INT,
    PRIMARY KEY (IdSoggetto, IdOpera),
    FOREIGN KEY (IdSoggetto) REFERENCES Soggetti(IdSoggetto),
    FOREIGN KEY (IdOpera) REFERENCES Opere(IdOpera)
);

CREATE TABLE if NOT EXISTS Utenti (
    IdUtente INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) NOT NULL UNIQUE,
    Password VARCHAR(255) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DataRegistrazione TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Ruolo ENUM('admin', 'user') DEFAULT 'user',
    Attivo BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS Commenti (
    IdCommento INT PRIMARY KEY AUTO_INCREMENT,
    IdUtente INT NOT NULL,
    Testo TEXT NOT NULL,
    DataCommento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (IdUtente) REFERENCES Utenti(IdUtente)
);