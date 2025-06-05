INSERT INTO Materiali (Nome) VALUES 
('marmo verde'),
('marmo bianco'),
('Bronzo'),
('marmo'),
('Pietra'),
('Marmo'),
('Granito rosa di Baveno'),
('Marmo di Candoglia'),
('Bronzo Policromo');

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (1, 'Statua Francesco Cucchi', '1920', 'Statua commemorativa', 28, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (1, 'it', 'Il monumento è dedicato a Francesco Cucchi (1834-1913), patriota e politico italiano originario di Bergamo. Partecipò alla Spedizione dei Mille guidata da Giuseppe Garibaldi e fu ferito durante gli scontri a Palermo. Successivamente, ricoprì ruoli politici di rilievo e contribuì al processo di unificazione italiana. La statua, realizzata dallo scultore milanese Attilio Prandoni, è un busto in marmo verde che celebra il suo impegno per la patria.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694528, 9.669722, 'Piazza Giacomo Matteotti', 'Bergamo', '1920-05-30', 1);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (1, 1), (1, 2);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (2, 'Monumento dell''ANMIL', '1989', 'Monumento commemorativo', 250, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (2, 'it', 'Il monumento, realizzato dall''artista Tomaso Pizio nel 1989, è dedicato ai lavoratori mutilati e invalidi del lavoro. La sua ricollocazione in Piazza della Repubblica mira a conferirgli maggiore visibilità e a onorare adeguatamente le vittime del lavoro.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.682013, 9.676435, 'Via Case Barca', 'Bergamo', '1989-01-01', 2);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (2, 3), (2, 4);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (3, 'Monumento agli Alpini', '1959-1962', 'Scultura', 208, 'Comune di Bergamo', 'Associazione Nazionale Alpini (ANA)', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (3, 'it', 'Il monumento agli Alpini di Bergamo fu concepito per onorare il sacrificio e l''eroismo degli Alpini bergamaschi, che hanno combattuto in guerre e missioni, spesso a costo della propria vita. Dopo anni di progetti e impegni, nel 1957 venne avviata la realizzazione dell''opera, grazie all''impegno del Comune, della Provincia, delle banche, e di altre istituzioni e privati. Il progetto venne scelto tramite un concorso e fu realizzato dallo scultore Peppino Marzot, insieme a diversi architetti. Il monumento fu inaugurato il 18 marzo 1962, durante la 35ª Adunata Nazionale degli Alpini. La scultura, situata in un''area di pregio della città, simboleggia le difficoltà e i sacrifici degli Alpini, rappresentando le montagne, le trincee e le difficili condizioni di guerra. È anche un tributo a coloro che sono morti senza una tomba, sparsi nelle montagne e nelle terre lontane. Il monumento, con la sua maestosità, rappresenta l''alpino come figura simbolo di coraggio, tenacia, e difesa dei valori fondamentali come la famiglia, la tradizione e i principi morali.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.692228, 9.673916, 'Piazzale degli Alpini', 'Bergamo', '1962-03-18', 3);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (3, 5), (3, 6), (3, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (4, 'Monumento ad Antonio Locatelli', '1953-1956', 'Monumento commemorativo', 300, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (4, 'it', 'Il monumento è composto da una fontana a pianta rettangolare con una parete dai motivi geometrici. Al centro della parete è situato il busto in bronzo di Antonio Locatelli in uniforme, realizzato dallo scultore Antonio Berti. Alla base del busto è presente un''aquila in altorilievo, simbolo di forza e audacia.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.695000, 9.670000, 'Viale Vittorio Emanuele II', 'Bergamo', '1956-01-01', 4);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (4, 3), (4, 6);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (5, 'Monumento a Vittorio Emanuele II', '1881-1884', 'Scultura', 120, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (5, 'it', 'Il monumento si trova nei giardini di fronte al Palazzo Frizzoni a Bergamo, sulla Piazza Matteotti, che si affaccia su via XX Settembre. Realizzato dagli scultori Luigi Pagani e Francesco Barzaghi tra il 1881 e il 1884, è un''opera imponente, la cui sola grandezza del personaggio è di 4,30 m, costruita con 96 quintali di granito rosso di Baveno. La statua raffigura Vittorio Emanuele II in piedi, con mantello e spada, in una posa che esprime vigore e fierezza. Il basamento è complesso, composto da più livelli: uno zoccolo, un dado, cornici e un monolite con l''iscrizione ''A VITTORIO EMANUELE II° - BERGAMO - MDCCCLXXXIV'' in bronzo. Ai lati del monumento sono posizionati due leoni simbolici: uno ferito (che rappresenta il 1848/49) e uno forte e liberato (che simboleggia la vittoria del 1859). Il monumento è un pregevole esempio artistico che fonde elementi del Realismo e Verismo, commemora un importante periodo storico italiano e rappresenta il desiderio della città di Bergamo di onorare il ''re galantuomo''.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694347, 9.669430, 'Piazza Giacomo Matteotti', 'Bergamo', '1884-01-01', 5);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (5, 7), (5, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (6, 'Busto di Lorenzo Mascheroni', '1897', 'Busto commemorativo', 19, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (6, 'it', 'Il Monumento a Lorenzo Mascheroni è un busto commemorativo realizzato nel 1897 da Ernesto Bazzaro, in marmo di Candoglia, materiale noto per la sua eleganza e durabilità. La statua celebra Lorenzo Mascheroni (1750-1800), celebre matematico, poeta e illuminista bergamasco, rettore dell''Università di Pavia e figura di spicco nella cultura scientifica dell''epoca.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694083, 9.668278, 'Sentierone, Piazza Matteotti', 'Bergamo', '1897-01-01', 6);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (6, 8);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (7, 'Statua di Giuseppe Garibaldi', '1882', 'Statua commemorativa', 33, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (7, 'it', 'Durante la seduta del 5 giugno 1882, il Consiglio Comunale decise di erigere in città un monumento in onore dell'' Eroe dei due mondi, scomparso soltanto due giorni prima. La scelta quindi cadde sul centro di Città Alta che sin dal 1861 portava il nome di "Piazza Garibaldi", costringendo la scultura veneziana a traslocare e scatenando così le ire dei cattolici. Smontata e riposta all''interno di un magazzino, la fonte venne sostituita dal monumento del generale nizzardo, realizzato dai fratelli Cesare e Alberto Maironi. Posizionata su un alto basamento in marmo bianco con quattro rampe di scale accompagnate da quattro leoni in bronzo, l''effige spiccava all''interno dell''antico spazio con i suoi 3,30 metri di altezza, apparendo per certi versi sproporzionato all''area. Sopite le polemiche, nel 1922 la fontana tornò alla sua collocazione originaria con tanto di serpenti che ancora oggi incuriosiscono i turisti in transito per il centro storico di Bergamo. L''opera dedicata a Garibaldi, avvolto nel suo poncho e munito di berretto ungherese e spada, venne trasferita nella parte bassa della città, posta all''interno del Rotonda dei Mille. Alcune modifiche portarono alla sostituzione del basamento originale e alla scomparsa dei felini, ritenuti inadeguati per la nuova collocazione e fusi durante la Seconda Guerra Mondiale.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.695480, 9.666877, 'Rotonda dei Mille', 'Bergamo', '1922-01-01', 7);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (7, 2), (7, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (8, 'Monumento al Partigiano', '1977', 'Scultura commemorativa', 35, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (8, 'it', 'Il monumento è formato da una grande lastra rettangolare di bronzo con due lati scolpiti. Su un lato, vi sono due figure umane: una giovane donna che sembra avvicinarsi a un giovane uomo impiccato per i piedi, con il corpo floscio e inerme. Sopra di loro, un groviglio di corda simile a un cappio e segni che ricordano ramoscelli. Sul lato opposto, è incisa una poesia di Manzù del 25 aprile 1972, che esprime dolore e tenerezza per un partigiano impiccato.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694444, 9.669722, 'Piazza Giacomo Matteotti', 'Bergamo', '1977-01-01', 8);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (8, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (9, 'Statua di Arlecchino', '2002', 'Scultura pubblica', 30, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (9, 'it', 'La scultura raffigura Arlecchino in movimento, catturando l''essenza vivace e giocosa del personaggio. Il design moderno e distintivo mette in risalto il tradizionale costume a rombi multicolor, simbolo della maschera bergamasca.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.691500, 9.676000, 'Piazzale degli Alpini', 'Bergamo', '2011-11-26', 9);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (9, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (10, 'Decorati al valore civile', '1953', 'Statua commemorativa', 20, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (10, 'it', 'La statua "Decorati al valore civile" rappresenta una figura eroica in bronzo, simbolo di coraggio e impegno civile. È stata eretta per rendere omaggio alle persone che, con atti di valore civile, hanno contribuito al bene della comunità. L''opera fa parte di una serie di monumenti e commemorazioni dedicate ai cittadini di Bergamo che si sono distinti in vari ambiti, tra cui l''assistenza civile, il salvataggio e altri meriti legati alla comunità.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.698300, 9.670800, 'Piazzale Lussana', 'Bergamo', '1954-01-01', 10);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (10, 3);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (11, 'Monumento a Gaetano Donizetti', '1897', 'Scultura commemorativa', 30, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (11, 'it', 'Il Monumento a Gaetano Donizetti è un omaggio al celebre compositore bergamasco e rappresenta uno dei lavori più iconici dello scultore Francesco Jerace. L''opera è caratterizzata da un busto imponente di Donizetti posto al centro, circondato da figure allegoriche che celebrano la Musica e l''Arte. Accanto al compositore, una figura femminile simbolizza l''ispirazione artistica, mentre altre scene scolpite evocano momenti della sua carriera e del suo legame con Bergamo. L''intero monumento si erge su un basamento decorato con rilievi e iscrizioni, celebrando il genio musicale di Donizetti e la sua eredità culturale. È un punto di riferimento per gli amanti della musica e per i cittadini di Bergamo, che continuano a onorare uno dei loro più illustri concittadini.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.695556, 9.671389, 'Piazza Cavour', 'Bergamo', '1897-01-01', 11);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (11, 2), (11, 6);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (12, 'Monumento a Camillo Benso Conte di Cavour', '1913', 'Monumento celebrativo', 300, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (12, 'it', 'Opera di Leonardo Bistolfi di notevole valore artistico, fu inaugurata il 22 settembre del 1913. La statua rappresenta allegoricamente l''Italia: una donna, avvolta da veli, sembra svegliarsi dal sonno grazie alle gesta compiute da Camillo Benso. Alla base della statua, infatti, è presente la scritta ''A Camillo Benso di Cavour'' e sul lato destro sono visibili un bassorilievo raffigurante il profilo del Conte e un''iscrizione a lui dedicata.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.695000, 9.674000, 'Piazza Matteotti', 'Bergamo', '1913-09-22', 12);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (12, 2);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (13, 'Anima Mundi', '2010', 'Scultura Monumentale', 35, 'Fondazione Credito Bergamasco', 'Ugo Riva', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (13, 'it', '''Anima Mundi'' è una scultura che rappresenta un angelo proteso verso il cielo. L''opera incarna il tema della dualità tra materia e spirito, presenza e assenza. Il fronte della statua è pieno, mentre il retro è scavato, simboleggiando il vuoto che si mescola alla materia. Nel 2021, l''opera è stata ufficialmente dedicata alle vittime del COVID-19, diventando un simbolo di memoria per la comunità bergamasca.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694278, 9.671417, 'Largo Porta Nuova', 'Bergamo', '2011-01-01', 13);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (13, 9);

INSERT INTO Opere (IdOpera, NomeOpera, PeriodoRealizzazione, Tipologia, Altezza, Proprietario, DetentoreDiritti, LinkVideo)
VALUES (14, 'Monumento a Francesco Nullo', '1907', 'Opera commemorativa', 40, 'Comune di Bergamo', 'Comune di Bergamo', NULL);

INSERT INTO DescrizioniOpere (IdOpera, Lingua, Testo)
VALUES (14, 'it', 'Il monumento a Francesco Nullo si trova in piazza Matteotti a Bergamo. Francesco Nullo è stato un patriota e militare italiano nato a Bergamo. Di famiglia agiata, partecipò ai moti del 1848 e si distinse nelle barricate delle Cinque Giornate di Milano. Seguì Garibaldi unendosi ai Cacciatori delle Alpi e fu protagonista nella Spedizione dei Mille, contribuendo all''arruolamento dei volontari e fornendo le iconiche camicie rosse. Nullo si guadagnò il grado di generale per il suo coraggio, partecipando a numerose battaglie, tra cui quelle di Palermo e Calatafimi. Nel 1863 guidò una legione di volontari italo-francesi a sostegno degli insorti polacchi contro la Russia. Morì eroicamente durante la battaglia di Krzykawka, in Polonia, dove è sepolto e ricordato come eroe nazionale. Numerosi monumenti, vie e scuole in Italia e Polonia portano il suo nome, testimoniando la sua memoria duratura. Nel 1907 la città di Bergamo inaugurò un monumento realizzato dallo scultore milanese Ernesto Bazzaro. Questo monumento mostra un busto in marmo di Francesco Nullo, mentre nella sua base in bronzo vediamo Nullo a cavallo.');

INSERT INTO Posizioni (Latitudine, Longitudine, Indirizzo, Citta, DataCollocazione, IdOpera)
VALUES (45.694981, 9.670438, 'Piazza Matteotti', 'Bergamo', '1907-01-01', 14);

INSERT INTO MaterialiOpere (IdOpera, IdMateriale)
VALUES (14, 6), (14, 3);