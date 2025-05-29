# StatueDoc
## Schema concettuale
[slide1](schema.png)
---

## Schema logico
Artisti(<ins>IdArtista</ins>, Cognome, Nome, Pseudonimo, DataNascita, LuogoNascita, DataMorte, LuogoMorte, Stile, NazioneNascita)  
Biografia(<ins>IdArtista, Lingua</ins>, Testo)  
Opere(<ins>IdOpera</ins>, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)  
DescrizioneOpere(<ins>IdOpera, Lingua</ins>, Testo)  
Creazioni(<ins>Artista, Opera</ins>)  
Posizioni(<ins>Latitudine, Longitudine</ins>, Indirizzo, Citta, DataCollocazione, Opera)  
Itinerari(<ins>IdItinerario</ins>, Nome)  
PercorsiTematici(<ins>Opera, Itinerario</ins>, NumOrdine)  
Materiali(<ins>IdMateriale</ins>, Nome)  
MaterialiOpere(<ins>Opera, Materiale</ins>)  
Foto(<ins>IdFoto</ins>, Nome, Link, Opera)  
Soggetti(<ins>IdSoggetto</ins>, Nome)  
SoggettiRappresentati(<ins>Soggetto, Opera</ins>)  
Utenti(<ins>IdUtente</ins>, Username, Email, Password, DataRegistrazione, Ruolo, Attivo)
Commenti(<ins>IdCommento</ins>, IdUtente, Testo, DataCommento)

## Vincoli
### Integrità referenziale
Biografia(IdArtista) ⊆ Artisti(IdArtista)  
DescrizioniOpere(IdOpera) ⊆ Opere(IdOpera)  
Creazioni(Artista) ⊆ Artisti(IdArtista)  
Creazioni(Opera) ⊆ Opere(IdOpera)  
Posizioni(Opera) ⊆ Opere(IdOpera)  
PercorsiTematici(Opera) ⊆ Opere(IdOpera)  
PercorsiTematici(Itinerario) ⊆ Itinerari(IdItinerario)  
MaterialiOpere(Opera) ⊆ Opere(IdOpera)  
MaterialiOpere(Materiale) ⊆ Materiali(IdMateriale)  
Foto(Opera) ⊆ Opere(IdOpera)  
SoggettiRappresentati(Soggetto) ⊆ Soggetti(IdSoggetto)  
SoggettiRappresentati(Opera) ⊆ Opere(IdOpera)
Commenti(IdUtente) ⊆ Utenti(IdUtente)

### Vincoli di dominio e di tupla
Artista(DataNascita)<=Artista(DataMorte) OR Artista(DataMorte) IS NULL  
Opere(LinkVideo) deve essere un percorso valido  
Opere(Altezza) > 0 OR Opere(Altezza) IS NULL  
-90 <= Posizioni(Latitudine) <= 90  
-180 <= Posizioni(Longitudine) <= 180  
PercorsiTematici(NumOrdine) > 0  
Foto(Link) deve essere un percorso valido  
Utenti(Ruolo) ∈ {Amministratore, Utente}
Utenti(Username) deve essere unico
Utenti(Email) deve essere unica
