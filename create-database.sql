CREATE DATABASE IF NOT EXISTS Opere;

USE Opere;

CREATE TABLE IF NOT EXISTS Artisti (
    IdArtista INT PRIMARY KEY AUTO_INCREMENT,
    Cognome VARCHAR(50) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    Pseudonimo VARCHAR(50) NOT NULL,
    DataNascita DATE NOT NULL CHECK,
    LuogoNascita VARCHAR(50) NOT NULL,
    DataMorte DATE,
    LuogoMorte VARCHAR(50),
    Stile VARCHAR(50) NOT NULL,
    Nazionalita VARCHAR(50) NOT NULL,
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
    Descrizione TEXT NOT NULL,
    PeriodoRealizzazione VARCHAR(50) NOT NULL,
    Tipologia VARCHAR(50) NOT NULL,
    Altezza INT NOT NULL CHECK (Altezza > 0),
    Proprietario VARCHAR(50) NOT NULL,
    DetentoreDiritti VARCHAR(50) NOT NULL,
    LinkVideo VARCHAR(255),
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
    PRIMARY KEY (Latitudine, Longitudine),
    FOREIGN KEY (IdOpera) REFERENCES opere(IdOpera)
);

CREATE TABLE IF NOT EXISTS Itinerari (
    IdItinerario INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
);

CREATE TABLE IF NOT EXISTS Percorsi (
    Opera INT REFERENCES Opere(IdOpera),
    Itinerario INT REFERENCES Itinerari(IdItinerario),
    NumOrdine INT NOT NULL CHECK (NumOrdine > 0),
    PRIMARY KEY (Opera, Itinerario),
);

CREATE TABLE IF NOT EXISTS Materiali (
    IdMateriale INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
);

CREATE TABLE IF NOT EXISTS MaterialiOpere (
    IdOpera INT REFERENCES Opere(IdOpera),
    IdMateriale INT REFERENCES Materiali(IdMateriale),
    PRIMARY KEY (IdOpera, IdMateriale),
);

CREATE TABLE IF NOT EXISTS Foto (
    IdFoto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Link VARCHAR(255) NOT NULL,
    Opera INT REFERENCES Opere(IdOpera),
);

CREATE TABLE IF NOT EXISTS Soggetti (
    IdSoggetto INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
);

CREATE TABLE IF NOT EXISTS SoggettiRappresentati (
    IdSoggetto INT REFERENCES Soggetti(IdSoggetto),
    IdOpera INT REFERENCES Opere(IdOpera),
    PRIMARY KEY (IdSoggetto, IdOpera),
);