# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\lijecnicka_ord.sql

drop database if exists lijecnicka_ord;
create database lijecnicka_ord;
use lijecnicka_ord;

create table lijecnik(
    ime varchar(50),
    titula varchar(50),
    specijalizacija varchar(50)
);

create table ordinacija(
    vrstaord varchar(50),
    mjesto varchar(50),
    adresa varchar(50),
    lijecnik int not null
);

create table pacijent(
    mbo char(9),
    ime varchar(50),
    prezime varchar(50),
    pregled int not null
);

create table pregled(
    vrsta varchar(50),
    datum datetime,
    vrijeme datetime,
    lijecnik int not null,
    cijena decimal(15,2)
);


