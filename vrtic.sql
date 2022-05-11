
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\vrtic.sql

drop database if exists vrtic;
create database vrtic;
use vrtic;

create table ustanova(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    adresa varchar(50),
    ravnateljica varchar(50)
);

create table odgojnaskupina(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    voditeljica int not null,
    brojpolaznika int,
    dobdjece varchar(50),
);

create table voditeljica(
    sifra int not null primary key auto_increment,
    imeprezime varchar(50),
    radnoiskustvo datetime,
    strucnasprema varchar(50)
);

create table korisnik(
    sifra int not null primary key auto_increment,
    imeprezime varchar(),
    oib char(11),
    imeoca varchar(50),
    imemajke varchar(50),
    odgojnaskupina int not null
);
