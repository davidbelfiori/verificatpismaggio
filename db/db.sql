use tpsit;

insert into user (Email, Username, password, TypeUser)
values ('belfiori.david_julian.stud@itisgalileiroma.it','giovavnni_nanni','admin','Cliente');
insert into indirizzi (Regione, Provincia, qualificatore, nomestrada, numerocivico, CAP)
values ('lazio','Rm','via','bruno buozzi',4,00181);
insert into clienti (Nome, Cognome, CF, Dob, nTel, idUser1, idIndirizzo1)
values ('giovanni','nanni','BLFDDJ03R10H501A','2003-10-10',3933295303,(select idUser from user where Email='belfiori.david_julian.stud@itisgalileiroma.it'),3);



insert into user (Email, Username, password, TypeUser)
values ('officina1@gmail.com','officina1','admin','officina');
insert into indirizzi (Regione, Provincia, qualificatore, nomestrada, numerocivico, CAP)
values ('lazio','rm','via','giovanni spadolini',1,00185);
insert into officine (nome, ntel1, iduser2, idindirizzo2)
values ('officina1','0678369335',(select idUser from user where Email= 'officina1@gmail.com'),2);


insert into tpsit.macchine (Targa, Proprietario, Modello, tipo, Nazione, idCliente1)
values ('fg524lz','nanni giovanni','i10','Due volumi','italia',3);


insert into assistenze (Data, Orario, idOfficina3, idCliente4)
values (2022-05-22,12.00,);


/* ddl
   create table indirizzi
(
    idIndirizzo   int auto_increment
        primary key,
    Regione       enum ('Lazio', 'Umbria', 'Toscana', 'Marche')                                                                                             not null,
    Provincia     enum ('FR', 'LT', 'RI', 'RM', 'VT', 'AN', 'AP', 'FM', 'MC', 'PU', 'AR', 'FI', 'GR', 'LI', 'LU', 'MS', 'PI', 'PT', 'PO', 'SI', 'PG', 'TR') not null,
    qualificatore enum ('Via', 'Piazza', 'Largo')                                                                                                           not null,
    nomestrada    varchar(255)                                                                                                                              not null,
    numerocivico  int                                                                                                                                       null,
    CAP           int                                                                                                                                       not null
);

create table prodotti
(
    idProdotto        int auto_increment
        primary key,
    categoriaProdotto enum ('Aisin AW TF-XX SC', 'Albero (meccanica)', 'Albero a camme', 'Albero a gomiti', 'Albero di trasmissione', 'Amiantite', 'Ammortizzatore', 'Ammortizzatore di sterzo', 'Anello darresto', 'Anello raschiaolio', 'Arpionismo', 'Assale rigido', 'Attrezzatura amovibile di presa di carico', 'Balestra (meccanica)', 'Barra duomi', 'Barra Panhard', 'Biella (meccanica)', 'Bilanciere (meccanica)', 'Boccola', 'Braccio a terra', 'Bronzina', 'Bullone', 'Bullone Chicago', 'Bullone esplosivo', 'CA.R.C.', 'Cambio (meccanica)', 'Cambio a doppia frizione', 'Cambio automatico', 'Cambio continuo', 'Cambio robotizzato', 'Camma', 'Carter (meccanica)', 'Catena (meccanica)', 'Catena articolata Galle', 'Catena portacavi', 'Caterina (meccanica)', 'Chiavarda', 'Chiavetta (meccanica)', 'Chiavetta di Woodruff', 'Cinghia', 'Cingolo (trasporti)', 'Contralbero', 'Convertitore catalitico', 'Convertitore di coppia', 'Copiglia', 'Coppia conica', 'Corona (meccanica)', 'Cremagliera', 'Culla (moto)', 'Cuscinetto (meccanica)', 'Dado (meccanica)', 'Demoltiplica', 'Deragliatore', 'Desmodromico', 'Differenziale (meccanica)', 'Direct-Shift Gearbox', 'Disco freno', 'Dissipatore viscoso', 'Drag Reduction System', 'Eccentrico (meccanica)', 'Fascia elastica', 'Fiat Dual Clutch Transmission', 'Filetto riportato', 'Flangia', 'Forcella (moto)', 'Forcellone', 'Frenatura', 'Freno idraulico', 'Freno pneumatico', 'Frizione (meccanica)', 'Ghiera (meccanica)', 'Girante', 'Giroscopio cavo freno', 'Giunto (meccanica)', 'Giunto cardanico', 'Giunto elastico', 'Giunto idraulico', 'Giunto omocinetico', 'Giunto viscoso', 'Glifo oscillante', 'Gorbia', 'Guarnizione', 'Hydrolastic', 'Impianto frenante misto', 'Inertizzatore (dispositivo meccanico)', 'Ingranaggio', 'Intercooler', 'KERS', 'Linguetta (meccanica)', 'Longherone', 'Macchina da dividere', 'Madrevite', 'Mandrino', 'Manovella', 'Marmitta Abarth', 'Martelletto', 'Meccanica del contatto', 'Meccanica del contatto con attrito', 'MGU-K', 'Molla', 'Molla a forza costante', 'Molla a tazza', 'Mozzo (meccanica)', 'O-ring', 'Parallelogramma di Watt', 'Pastiglie freno', 'Pignone (meccanica)', 'Pinza freno', 'Pistone (idraulica)', 'Pistone (meccanica)', 'Pompa freno', 'Ponte De Dion', 'Portamozzo', 'Potenziometro (meccanica)', 'Punteria', 'Punto dingrassaggio', 'Punto di oliatura', 'Retarder', 'Riduttore', 'Riduttore di velocità', 'Riga ottica', 'Rondella (meccanica)', 'Ruota Dreadnaught', 'Ruota libera', 'Ruota Mecanum', 'Ruota Pedrail', 'Ruote decadiche', 'Scappamento', 'Seeger (meccanica)', 'Selespeed', 'Selettore marcia', 'Semiasse', 'Serbatoio liquido freno', 'Serratura', 'Servoautodistributore', 'Servodistributore a triplo comando', 'Servofreno', 'Servosterzo', 'Sistema corona-pignone', 'Sonda lambda', 'Sospensione (meccanica)', 'Sospensione Christie', 'Sospensione idropneumatica', 'Sospensione pneumatica (meccanica)', 'Sospensioni a molloni verticali', 'Sovralimentazione tramite compressore volumetrico', 'Spina elastica', 'Sportronic', 'Stantuffo', 'Testacroce', 'Torsen', 'Torx', 'Train baladeur', 'Trasmissione (meccanica)', 'Trasmissione seamless', 'Trave (moto)', 'Turbocompressore', 'Variomatic', 'Vite (meccanica)', 'Vite a legno', 'Vite a ricircolo di sfere', 'Vite calante', 'Vite micrometrica', 'Vite prigioniera)') not null
);

create table tipointerventi
(
    idIntervento   int auto_increment
        primary key,
    tipoIntervento enum ('Olio motore', 'Liquido di raffreddamento', 'Pastiglie dei freni', 'Liquido dei freni', 'Usura pneumatici', 'Pressione pneumatici', 'Liquido Batteria', 'Funzionamento luci', 'Usura tergicristalli e livello liquido lavavetri', 'cambio componenti meccaniche') not null,
    tempo          time                                                                                                                                                                                                                                                                    not null
);

create table user
(
    idUser   int auto_increment
        primary key,
    Email    varchar(50)                  not null,
    Username varchar(30)                  not null,
    password varchar(30)                  not null,
    TypeUser enum ('Officina', 'Cliente') not null,
    constraint Email
        unique (Email),
    constraint Username
        unique (Username)
);

create table clienti
(
    idCliente    int auto_increment
        primary key,
    Nome         varchar(30) not null,
    Cognome      varchar(30) not null,
    CF           char(16)    not null,
    Dob          date        not null,
    nTel         varchar(11) not null,
    idUser1      int         null,
    idIndirizzo1 int         null,
    constraint CF
        unique (CF),
    constraint clienti_ibfk_1
        foreign key (idUser1) references user (idUser),
    constraint clienti_ibfk_2
        foreign key (idIndirizzo1) references indirizzi (idIndirizzo)
);

create index idIndirizzo1
    on clienti (idIndirizzo1);

create index idUser1
    on clienti (idUser1);

create table macchine
(
    Targa        char(7)                                                                                                                                                                               not null
        primary key,
    Proprietario varchar(50)                                                                                                                                                                           not null,
    Modello      varchar(50)                                                                                                                                                                           not null,
    tipo         enum ('Berlina', 'Due volumi', 'Monovolume', 'Familiare (o giardinetta o "station wagon")', 'Coupé', 'Decappottabile', 'Spyder (Roadster)', 'Veicolo multiuso (o monovolume grande)') not null,
    Nazione      enum ('Italia')                                                                                                                                                                       not null,
    idCliente1   int                                                                                                                                                                                   null,
    constraint macchine_ibfk_1
        foreign key (idCliente1) references clienti (idCliente)
);

create index idCliente1
    on macchine (idCliente1);

create table officine
(
    idOfficina   int auto_increment
        primary key,
    Nome         varchar(30) not null,
    nTel1        varchar(11) not null,
    idUser2      int         null,
    idIndirizzo2 int         null,
    constraint officine_ibfk_1
        foreign key (idUser2) references user (idUser),
    constraint officine_ibfk_2
        foreign key (idIndirizzo2) references indirizzi (idIndirizzo)
);

create table assistenze
(
    idAssistenza int auto_increment
        primary key,
    Data         date not null,
    Orario       time not null,
    idOfficina3  int  null,
    idCliente4   int  null,
    constraint assistenze_ibfk_1
        foreign key (idOfficina3) references officine (idOfficina),
    constraint assistenze_ibfk_2
        foreign key (idCliente4) references clienti (idCliente)
);

create index idCliente4
    on assistenze (idCliente4);

create index idOfficina3
    on assistenze (idOfficina3);

create index idIndirizzo2
    on officine (idIndirizzo2);

create index idUser2
    on officine (idUser2);

create table operazioni
(
    idOperazione int auto_increment
        primary key,
    statoLavoro  enum ('non in lavorazione', 'In lavorazione', 'completato') default 'non in lavorazione' null,
    idOfficina2  int                                                                                      null,
    idCliente2   int                                                                                      null,
    constraint operazioni_ibfk_1
        foreign key (idOfficina2) references officine (idOfficina),
    constraint operazioni_ibfk_2
        foreign key (idCliente2) references clienti (idCliente)
);

create table accettazioni
(
    idAccettazioni int auto_increment
        primary key,
    preventivo     float             not null,
    accettato      enum ('si', 'no') null,
    idAssistenza1  int               null,
    idOperazione1  int               null,
    constraint accettazioni_ibfk_1
        foreign key (idAssistenza1) references assistenze (idAssistenza),
    constraint accettazioni_ibfk_2
        foreign key (idOperazione1) references operazioni (idOperazione)
);

create index idAssistenza1
    on accettazioni (idAssistenza1);

create index idOperazione1
    on accettazioni (idOperazione1);

create table fatture
(
    idFattura            int auto_increment
        primary key,
    interventieffettuati varchar(255) not null,
    nInterventi          int          not null,
    prodottiImpiegati    varchar(255) not null,
    totale               float        not null,
    idOperazione1        int          null,
    constraint fatture_ibfk_1
        foreign key (idOperazione1) references operazioni (idOperazione)
);

create table esecuzioni
(
    idFattura2    int null,
    idIntervento1 int null,
    constraint esecuzioni_ibfk_1
        foreign key (idFattura2) references fatture (idFattura),
    constraint esecuzioni_ibfk_2
        foreign key (idIntervento1) references tipointerventi (idIntervento)
);

create index idFattura2
    on esecuzioni (idFattura2);

create index idIntervento1
    on esecuzioni (idIntervento1);

create index idOperazione1
    on fatture (idOperazione1);

create index idCliente2
    on operazioni (idCliente2);

create index idOfficina2
    on operazioni (idOfficina2);

create table pagamenti
(
    idCliente3 int null,
    idFattura4 int null,
    constraint pagamenti_ibfk_1
        foreign key (idCliente3) references clienti (idCliente),
    constraint pagamenti_ibfk_2
        foreign key (idFattura4) references fatture (idFattura)
);

create index idCliente3
    on pagamenti (idCliente3);

create index idFattura4
    on pagamenti (idFattura4);

create table usati
(
    idFattura1  int null,
    idProdotto1 int null,
    constraint usati_ibfk_1
        foreign key (idFattura1) references fatture (idFattura),
    constraint usati_ibfk_2
        foreign key (idProdotto1) references prodotti (idProdotto)
);

create index idFattura1
    on usati (idFattura1);

create index idProdotto1
    on usati (idProdotto1);


 */