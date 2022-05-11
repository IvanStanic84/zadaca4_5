
# C:\xampp\mysql\bin\mysql -uroot  --default_character_set=utf8 < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\zastita_ziv.sql

drop database if exists zastita_ziv;
create database zastita_ziv;
use zastita_ziv;

create table udruga(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    oib char(11) not null,
    adresa varchar(50),
    iban varchar(50)
);

create table clanudruge(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    udruga int not null,
    brojsticenika int,
    mjesecnibrojdolazaka int
);
create table sticenik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    vrstaziv varchar(50),
    prostor varchar(50),
    udruga int not null
);

# definiranje vanjskih ključeva

alter table clanudruge add foreign key (udruga) references udruga(sifra);
alter table sticenik add foreign key (udruga) references udruga(sifra);

# unos podataka

insert into udruga (naziv, oib)
values ('9 zivota', 55533399911);

insert into clanudruge (ime, udruga)
values ('Sofija', 1);

insert into sticenik (ime, udruga)
values ('Floki', 1);