# hash 
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\edunovajp26ST2.sql

drop database if exists edunovajp26ST2;
create database edunovajp26ST2;
use edunovajp26ST2;

create table vozac(
    ime varchar(50),
    brojvozila varchar(50),
    brojvoznji varchar(50),
    brojputnika varchar(50)
);

create table clanudruge(
    ime varchar(50),
    brojsticenika varchar(50),
    brojdolazaka varchar(50)
);

create table odgajateljica(
    ime varchar(50),
    radnoiskustvo varchar(50),
    strucnasprema varchar(50)
);