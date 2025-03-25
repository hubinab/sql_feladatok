-- 2. feladat
DROP database if EXISTS `allatmenhely`;
CREATE DATABASE `allatmenhely`
CHARACTER SET utf8
COLLATE utf8_hungarian_ci;

-- 3. feladat
create table `menhelyek` (
    `id` int unsigned not null auto_increment,
    `nev` varchar(50),
    `cim` varchar(80),
    `web` varchar (255),
    `adoszam` char(13),
    `bankszamlaszam` char(26),
    PRIMARY KEY (`id`)
);

-- 4. feladat
create table `allatok` (
    `id` int unsigned not null auto_increment,
    `nev` varchar(40),
    `kor` int,
    `tipus` varchar(20),
    `fajta` varchar (20),
    `ivartalanitott` boolean,
    `nem` varchar(10),
    `behozva` date,
    PRIMARY KEY (`id`)
);

-- 5. feladat
insert into `menhelyek` (`nev`,`cim`,`web`,`adoszam`,`bankszamlaszam`)
values 
('Rex Kutyaotthon','1048 Budapest, Óceánárok u. 33.','http://www.rex.hu','18015676-1-41','10402283-22802398-70140000');

-- 6. feladat
SELECT * FROM `menhelyek` WHERE `nev`='Rex Kutyaotthon';

-- 7. feladat
insert into `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`)
values('Csoki', 4, 'kutya', 'keverék', 1, 2016-04-01, 1);
insert into `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`,`menhely_id`)
values('Picasso', 7, 'kutya', 'keverék', 0, 'kan', 2018-01-12, 1);

-- 8. feladat
INSERT INTO `menhelyek` (`nev`,`cim`,`web`,`adoszam`,`bankszamlaszam`)
VALUES ('Noé állatotthon', 'Budapest XVII.ker. Csordakút utca', 'http://www.noeallatotthon.hu/', '18169696-1-42', '11710002-20083777-00000000');

-- 9. feladat
INSERT INTO `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`,`menhely_id`)
VALUES('Bíbor', 2, 'macska', 'perzsa', 1, 'nőstény', '2017-05-17', 2);
INSERT INTO `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`,`menhely_id`)
VALUES('Bubbly', 0, 'macska', 'hiányzik', 0, 'nőstény', '2018-01-02', 2);
INSERT INTO `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`,`menhely_id`)
VALUES('Csoki', 2, 'kutya', 'keverék', 0, 'nőstény', '2020-01-12', 2);
INSERT INTO `allatok` (`nev`,`kor`,`tipus`,`fajta`,`ivartalanitott`,`nem`,`behozva`,`menhely_id`)
VALUES('Nixxxon', 2, 'golden retriver', 'keverék', 1, 'hím', curdate(), 2);

-- 10. feladat
delete from `allatok` where `nev`='Bubbly';

-- 11. feladat
update `allatok` set `nev`='Nixon' where `nev`='Nixxxon';

-- 12. feladat
update `allatok` set `nem`='nőstény' where `nev`='Picasso';

-- 13. feladat
update `allatok` set `kor`=3 where `nev`='Csoki' and `kor`=4;

-- 14. feladat
select avg(`kor`) as `atlageletkor` from `allatok` where `tipus`='kutya';

-- 15. feladat
select `m`.`nev`, count(*) from `menhelyek` as `m`, `allatok` as `a` where `a`.menhely_id = `m`.id group by `menhely_id`;

-- 16. feladat
select `m`.`nev`,`a`.`tipus`, count(*) from `menhelyek` as `m`, `allatok` as `a` where `a`.menhely_id = `m`.id group by `a`.`menhely_id`, `a`.`tipus` ;

-- 17. feladat
select count(*) from `menhelyek` as `m`, `allatok` as `a` where `a`.menhely_id = `m`.id and `m`.`nev` = 'Noé állatotthon' and `a`.`tipus`='kutya';

-- 18. feladat
TRUNCATE TABLE `allatok`
