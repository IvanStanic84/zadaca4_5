# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\salon_uljep.sql

drop database if exists salon_uljep;
create database salon_uljep;
use salon_uljep;

create table djelatnica(
    ime varchar(50),
    smjena varchar(50),
    brojkorisnika varchar(50),
    promet varchar(50)
);

create table korisnik(
    spol varchar(50),
    smjena varchar(50),
    usluga varchar(50),
    novac varchar(50)
);

create table usluga (
    vrsta varchar(50),
    cijena varchar(50),
    vrijeme varchar(50)
);