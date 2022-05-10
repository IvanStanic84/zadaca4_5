# C:\xampp\mysql\bin\mysql -uroot --default_character_set=utf8  < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\salon_uljep.sql

drop database if exists salon_uljep;
create database salon_uljep;
use salon_uljep;

create table djelatnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    smjena varchar(50) not null,
    brojkorisnika int,
    promet decimal (10,2)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    spol varchar(50),
    smjena varchar(50),
    usluga int not null,
    novac decimal (10,2)
);

create table usluga (
    sifra int not null primary key auto_increment,
    vrsta varchar(50) not null,
    cijena decimal(10,2) not null,
    vrijeme time
);

create table salon(
    sifra int not null primary key auto_increment,
    brojsalona int not null,
    adresa varchar(50),
    promet decimal(10,2),
    djelatnica int not null 
);