C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\crkva.sql

drop database if exists crkva;
create database crkva;
use crkva;

create table svecenik(
    ime varchar(50),
    posao varchar(50),
    brojmisa varchar(50),
    nadredjeni varchar(50)
);