
# C:\xampp\mysql\bin\mysql -uroot  --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\zastita_ziv.sql

drop database if exists zastita_ziv;
create database zastita_ziv;
use zastita_ziv;

create table udruga(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    oib char(11),
    adresa varchar(50),
    iban varchar(50)
);

create table clanudruge(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    udruga int not null,
    brojsticenika int,
    mjesecnibrojdolazaka int
);
create table sticenik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    vrstaziv varchar(50),
    prostor varchar(50),
    udruga int not null
);


