# StatueDoc
## Schema concettuale


## Schema logico
Artisti(<u>IdArtista</u>, Cognome, Nome, Pseudonimo, DataNascita, LuogoNascita, DataMorte, LuogoMorte, Stile, NazioneNascita)  
Biografia(<u>IdArtista, Lingua</u>, Testo)  
Opere(<u>IdOpera</u>, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)  
DescrizioneOpere(<u>IdOpera, Lingua</u>, Testo)  
Creazioni(<u>Artista, Opera</u>)  
Posizioni(<u>Latitudine, Longitudine</u>, Indirizzo, Citta, DataCollocazione, Opera)  
Itinerari(<u>IdItinerario</u>, Nome)  
PercorsiTematici(<u>Opera, Itinerario</u>, NumOrdine)  
Materiali(<u>IdMateriale</u>, Nome)  
MaterialiOpere(<u>Opera, Materiale</u>)  
Foto(<u>IdFoto</u>, Nome, Link, Opera)  
Soggetti(<u>IdSoggetto</u>, Nome)  
SoggettiRappresentati(<u>Soggetto, Opera</u>)
Commenti(Utente, Testo)

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

### Vincoli di dominio e di tupla
Artista(DataNascita)<=Artista(DataMorte) OR Artista(DataMorte) IS NULL  
Opere(LinkVideo) deve essere un percorso valido  
Opere(Altezza) > 0 OR Opere(Altezza) IS NULL  
-90 <= Posizioni(Latitudine) <= 90  
-180 <= Posizioni(Longitudine) <= 180  
PercorsiTematici(NumOrdine) > 0  
Foto(Link) deve essere un percorso valido  

## Interfaccia database


