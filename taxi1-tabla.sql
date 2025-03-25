DROP database if EXISTS `taxi`;
CREATE DATABASE `taxi`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

USE taxi;

create table `szemely` (
    `id` int unsigned not null auto_increment,
    `nev` varchar(45),
    `szuletett` date,
    `telefon` varchar(45),
    PRIMARY KEY (`id`)
);

create table `tipus` (
    `id` int unsigned not null auto_increment,
    `gyartmany` varchar(45),
    `tipus` varchar(45),
    `loero` int,
    `ulesek` int,
    `fajta` varchar(45),
    `csomagter` int,
    PRIMARY KEY (`id`)
);

create table `auto` (
    `id` int unsigned not null auto_increment,
    `tipus` int,
    `tulaj` int,
    `rendszam` char(7),
    `szin` varchar(12),
    PRIMARY KEY (`id`)
);

create table `ut` (
    `id` int unsigned not null auto_increment,
    `auto_id` int,
    `sofor_id` int,
    `indulasi_ido` datetime,
    `erkezesi_ido` datetime,
    `km` float,
    `ar` int,
    PRIMARY KEY (`id`)
);

alter table `tipus` add `uzemanyag` varchar(10) not null;

alter table `tipus` add `fogyasztas` float;

alter table `tipus` add `kw` float DEFAULT null;

alter table `tipus` CHANGE `fajta` `kialakitas` varchar(45);

alter table `szemely` add `email` varchar(50) not null;

insert into `szemely` (`nev`,`szuletett`,`telefon`,`email`)
values('Pap Hajnalka','1994-10-26','(95) 596-243','PapHajnalka@teleworm.us');

insert into `szemely` (`nev`,`szuletett`,`telefon`,`email`)
values('Takáts Alexander','1989-08-17','(74) 557-850','TakatsAlexander@fleckens.hu');

insert into `szemely` (`nev`,`szuletett`,`telefon`,`email`)
values('Farkas Nikoletta','1966-01-24','(46) 453-909','FarkasNikoletta@cuvox.de');

insert into `tipus` (`gyartmany`,`tipus`,`loero`,`ulesek`,`kialakitas`,`csomagter`,`uzemanyag`,`fogyasztas`,`kw`)
values('Tokoma', 'Prince',160,5,'ferdehátú',400,'hibrid',2.3,NULL);

insert into `tipus` (`gyartmany`,`tipus`,`loero`,`ulesek`,`kialakitas`,`csomagter`,`uzemanyag`,`fogyasztas`,`kw`)
values('Tokoma','Avena',132,5,'kombi',522,'diesel',4.9,NULL);

insert into `tipus` (`gyartmany`,`tipus`,`loero`,`ulesek`,`kialakitas`,`csomagter`,`uzemanyag`,`fogyasztas`,`kw`)
values('MN','Gold',105,5,'ferdehátú',380,'benzin',7.6,NULL);

insert into `tipus` (`gyartmany`,`tipus`,`loero`,`ulesek`,`kialakitas`,`csomagter`,`uzemanyag`,`fogyasztas`,`kw`)
values('MN','Gold',134,5,'ferdehátú',348,'elektromos',0,NULL);

insert into `tipus` (`gyartmany`,`tipus`,`loero`,`ulesek`,`kialakitas`,`csomagter`,`uzemanyag`,`fogyasztas`,`kw`)
values('Bolt','On',69,4,'ferdehátú',220,'benzin',3.68,NULL);

SELECT count(*) as `ferdehatuDB` FROM `tipus` WHERE `kialakitas` = 'ferdehátú';

SELECT `uzemanyag`, avg(`fogyasztas`) FROM `tipus` GROUP BY `uzemanyag`;

SELECT `gyartmany` FROM `tipus` ORDER BY `fogyasztas` LIMIT 1;
