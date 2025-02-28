-- 3. feladat
SELECT * FROM `papirpenz`

-- 4. feladat
SELECT `azon`, `penznem`, `ertek`, round(`ertek`/420, 2) as `Euróban` FROM `papirpenz` WHERE `penznem` = "HUF"

-- 5. feladat
SELECT DISTINCT `penznem` FROM `papirpenz` 

-- 6. feladat
SELECT DISTINCT `penznem`, `ertek` FROM `papirpenz` ORDER BY `penznem`, `ertek`

-- 7. feladat
SELECT count(*) as `Sorok száma` FROM `papirpenz`

-- 8. feladat
SELECT count(DISTINCT `penznem`) as `Pénznemek` FROM `papirpenz`

-- 9. feladat
SELECT count(*) as `db` FROM `papirpenz` WHERE `penznem` = "HUF"

-- 10. feladat
SELECT `azon`, `penznem`, `ertek` FROM `papirpenz` ORDER BY `ertek` LIMIT 1

-- 11. feladat
SELECT `azon`, `penznem`, `ertek` FROM `papirpenz` ORDER BY `ertek` DESC LIMIT 1

-- 12. feladat
SELECT sum(`ertek`) as `EUR összesen` FROM `papirpenz` WHERE `penznem`="EUR"

-- 13. feladat
SELECT sum(`ertek`)*420 as `Ft` FROM `papirpenz` WHERE `penznem`="EUR"

-- 14. feladat
SELECT count(*) as `db`, concat(sum(`ertek`), " lej") as `osszeg` FROM `papirpenz` WHERE `penznem`="RON"

-- 15. feladat
SELECT count(*) as `db` FROM `papirpenz` WHERE `penznem`="HUF" AND `azon` like "%Y%"

-- 16. feladat
SELECT min(`ertek`) as `minimum` FROM `papirpenz` WHERE `penznem`="HUF"

-- 17. feladat
SELECT max(`ertek`) as `maximum` FROM `papirpenz` WHERE `penznem`="EUR"
