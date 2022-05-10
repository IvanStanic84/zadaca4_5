# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\lijecnicka_ord.sql

drop database if exists lijecnicka_ord;
create database lijecnicka_ord;
use lijecnicka_ord;

create table lijecnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    titula varchar(50) null,
    specijalizacija varchar(50)
);

create table ordinacija(
    sifra int not null primary key auto_increment,
    vrstaord varchar(50) not null,
    mjesto varchar(50),
    adresa varchar(50),
    lijecnik int not null
);

create table pacijent(
    sifra int not null primary key auto_increment,
    mbo char(9) not null,
    ime varchar(50),
    prezime varchar(50),
    pregled int
);

create table pregled(
    sifra int not null primary key auto_increment,
    vrsta varchar(50) not null,
    datum datetime,
    vrijeme datetime,
    lijecnik int not null,
    cijena decimal(15,2)
);

# definiranje vanjskih ključeva

alter table ordinacija add foreign key (lijecnik) references lijecnik(sifra);
alter table pregled add foreign key (lijecnik) references lijecnik(sifra);
alter table pacijent add foreign key (pregled) references pregled(sifra);

# unos podataka

insert into pacijent (mbo, ime)
values (012345678, 'pero');

insert into lijecnik (ime)
values ('Pero Peric');

insert into pregled (vrsta, cijena, lijecnik)
values ('gastro', 200, 1);

