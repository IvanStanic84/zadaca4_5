# C:\xampp\mysql\bin\mysql -uroot < C:\Users\Korisnik\Documents\GitHub\zadaca4_5\izlozbeni_salon.sql

drop database if exists izlozbeni_salon;
create database izlozbeni_salon;
use izlozbeni_salon;

create table izlozba(
    povrazdoblje varchar(50),
    brojdjela varchar(50),
    kustos varchar(50),
    sponzor varchar(50)
);