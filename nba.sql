-- 2 feladat
DROP database if EXISTS `hubina_nba`;
-- 3 feladat
create database if not EXISTS `hubina_nba`;
-- 4 feladat
use `hubina_nba`;
-- 5 feladat
create table `jatekos` (
    id int unsigned not null auto_increment comment 'A játékos azonosítója',
    nev varchar(25) comment 'A játékos neve',
    kor int comment 'A játékos kora',
    magassag float comment 'A játékos magassága centiméterben',
    csapat varchar(30) comment 'A csapat nevének rövidítése',
    PRIMARY KEY (`id`)
);
-- 6 feladat
truncate table `jatekos`;
-- 7 feladat
insert into `jatekos` (`nev`,`kor`,`magassag`,`csapat`)
values 
('Matt Fish', 27, 210.82, 'MIA');
-- 8 feladat
insert into `jatekos` (`nev`,`kor`,`magassag`,`csapat`)
values 
('Walter McCarty', 27, 208.28, 'BOS'),
('James Posey', 31, 203.2, 'BOS'),
('James Michael McAdoo', 22, 205.74, 'GSW')
;
-- 9 feladat
SELECT `csapat`, avg(`magassag`) FROM `jatekos` GROUP by `csapat`;
-- 10 feladat
SELECT `nev` FROM `jatekos` order by `magassag` DESC limit 1;
-- 11 feladat
SELECT `csapat`, `kor` FROM `jatekos` ORDER by `kor` limit 1;
