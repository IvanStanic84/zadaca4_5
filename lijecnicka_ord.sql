# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\lijecnicka_ord.sql

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
    adresa varchar(50)
);