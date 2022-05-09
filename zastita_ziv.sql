
# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\zastita_ziv.sql

drop database if exists zastita_ziv;
create database zastita_ziv;
use zastita_ziv;

create table clanudruge(
    ime varchar(50),
    brojsticenika varchar(50),
    brojdolazaka varchar(50)
);
create table sticenik(
    ime varchar(50),
    vrstaziv varchar(50),
    prostor varchar(50)
);


