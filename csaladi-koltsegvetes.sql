-- 3. feladat
SELECT * FROM `kiadasok`

-- 4. feladat
SELECT DISTINCT `kategoria` FROM `kiadasok`

-- 5. feladat
SELECT SUM(`mennyiseg`*`egysegar`) FROM `kiadasok`

-- 6. feladat
SELECT count(*) as `vett_mennyiseg` FROM `kiadasok`

-- 7. feladat
SELECT sum(`mennyiseg`) as `termekek_szama` FROM `kiadasok`

-- 8. feladat
SELECT count(distinct `megnevezes`) as `kulonbozo_db` FROM `kiadasok`

-- 9. feladat
SELECT avg(`egysegar`) as `atlagos_egysegar` FROM `kiadasok`

-- 10. feladat
SELECT min(`egysegar`) as `legolcsobb` FROM `kiadasok`

-- 11. feladat
SELECT max(`egysegar`) as `legdragabb` FROM `kiadasok`

-- 12. feladat
SELECT `megnevezes` as `megnevezes` FROM `kiadasok` WHERE `nev`="Bence"

-- 13. feladat
SELECT count(`megnevezes`) as `bence_db` FROM `kiadasok` WHERE `nev`="Bence"

-- 14. feladat
SELECT `megnevezes`, `mennyiseg`*`egysegar` as `fizetett` FROM `kiadasok` WHERE `nev`="Emese" order by `fizetett`

-- 15. feladat
SELECT sum(`mennyiseg`*`egysegar`) as `koltott` FROM `kiadasok` WHERE `nev`="Emese"

-- 16. feladat
SELECT `megnevezes`, `kategoria`, `mennyiseg`*`egysegar` as `koltes` FROM `kiadasok` WHERE `nev` in ("Bence", "Emese") ORDER BY `koltes` DESC

-- 17. feladat
SELECT `nev`, `megnevezes` FROM `kiadasok` ORDER BY (`mennyiseg`*`egysegar`) DESC LIMIT 5

-- 18. feladat
SELECT `nev`, `megnevezes`, `egysegar` FROM `kiadasok` ORDER BY `egysegar` DESC LIMIT 1
