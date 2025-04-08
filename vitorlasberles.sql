-- 3. feladat
SELECT DISTINCT `hajo`.`tipus` FROM `hajo` ORDER BY `hajo`.`tipus`; 

-- 4. feladat
SELECT MIN(`hajo`.`dij`) as `minimum` FROM `hajo`; 

-- 5. feladat
SELECT `hajo`.`nev`, `hajo`.`utas`, `hajo`.`dij` FROM `hajo` ORDER BY `hajo`.`utas` DESC, `hajo`.`dij` DESC LIMIT 3; 

-- 6. feladat
SELECT `hajo`.`tipus`, round(AVG(`hajo`.`dij`), 2) as `Átlagos viteldíj` FROM `hajo` GROUP BY `hajo`.`tipus` ORDER BY AVG(`hajo`.`dij`);  

-- 7. feladat
SELECT `hajo`.`nev`, COUNT(`tura`.`hajoazon`) as `Bérlés` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` GROUP BY `hajo`.`nev` ORDER BY COUNT(`tura`.`hajoazon`) DESC; 

-- 8. feladat
SELECT `hajo`.`nev`, COUNT(`tura`.`hajoazon`) as `alkalom` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` WHERE `hajo`.`utas` = `tura`.`szemely` GROUP BY `hajo`.`nev` ORDER BY COUNT(`tura`.`hajoazon`) DESC; 

-- 9. feladat
SELECT `hajo`.`nev`, SUM(`tura`.`nap`) as `Bérelt napok száma` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` GROUP BY `hajo`.`nev` ORDER BY SUM(`tura`.`nap`) DESC; 

-- 10. feladat
SELECT SUM(`tura`.`szemely`) as `Fő` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` WHERE `hajo`.`tipus`='kalóz'; 

-- 11. feladat
SELECT `hajo`.`nev` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` WHERE `tura`.`nap`= 7; 

-- 12. feladat
SELECT `hajo`.`nev`, round(`hajo`.`dij`/`hajo`.`utas`, 0) AS `Egy fore jutó bérleti díj` FROM `hajo` ORDER BY `hajo`.`nev`; 

-- 13. feladat
SELECT `hajo`.`nev`, SUM(`tura`.`nap`*`hajo`.`dij`) as `Hajó összbevétel` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` GROUP BY `hajo`.`nev` ORDER BY `Hajó összbevétel` DESC; 

-- 14. feladat
SELECT `hajo`.`nev`, COUNT(`tura`.`hajoazon`) as `Bérlés` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` WHERE `hajo`.`nev` like 'HUN-%' GROUP BY `hajo`.`nev` ORDER BY `hajo`.`nev` DESC; 

-- 15. feladat
SELECT COUNT(`tura`.`hajoazon`) as `db` FROM `tura` INNER JOIN `hajo` ON `hajo`.`regiszter` = `tura`.`hajoazon` WHERE `hajo`.`utas` = `tura`.`szemely` ORDER BY COUNT(`tura`.`hajoazon`) DESC; 
