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


