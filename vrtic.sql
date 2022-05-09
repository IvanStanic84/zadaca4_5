
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\vrtic.sql

drop database if exists vrtic;
create database vrtic;
use vrtic;

create table odgojnaskupina(
    voditeljica varchar(50),
    brojpolaznika varchar(50),
    dobdjece varchar(50)
);

create table voditeljica(
    ime varchar(50),
    radnoiskustvo varchar(50),
    strucnasprema varchar(50)
);
