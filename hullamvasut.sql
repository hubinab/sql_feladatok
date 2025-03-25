-- 2
drop database if exists `hullamvasut`;
-- 3
create database if not exists `hullamvasut`
character set utf8
collate utf8_hungarian_ci
;
-- 4
use `hullamvasut`;
-- 5
create table `tipus` (
    id int unsigned not null auto_increment comment 'A sor egyedi azonosítója',
    tipus varchar(30) comment 'A hullámvasút típusának neve',
    beszuntetett boolean comment 'Igaz, ha beszüntették a gyártását',
    elso int comment 'Az elso ilyen hullámvasút évszáma',
    darab int comment 'Hány darabot gyártottak belole',
    rogzites varchar(20) comment 'Hol rögzíti az utasokat',
    primary key(`id`)
);
-- 6
truncate table `tipus`;
-- 7
insert into `tipus` (`tipus`,`beszuntetett`,`elso`,`darab`,`rogzites`)
values 
('4th Dimension roller coaster', 0, 2002, 8, 'váll fölött'),
('Bobsled roller coaster', 0, 1929, 21, 'ölben'),
('Dive Coaster', 0,  1998, 14, 'váll fölött'),
('Floorless Coaster', 0, 1999, 14, 'váll fölött'),
('Flying roller coaster', 0, 1997, 26, 'váll fölött'),
('Inverted roller coaster', 0, 1992, 189, 'váll fölött'),
('Pipeline roller coaster', 1, 1984, 12, 'váll fölött'),
('Stand-up roller coaster', 0, 1982, 21, NULL),
('Suspended roller coaster',0,  1902, 37, NULL)
;