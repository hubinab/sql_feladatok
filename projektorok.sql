-- 3. feladat
SELECT * FROM `projektorok`

-- 4. feladat
SELECT `nev` FROM `projektorok` where `projektor` = 1 order by `nev`

-- 5. feladat
SELECT `nev`, `elvitte` FROM `projektorok` where `projektor` = 4 order by `elvitte` DESC

-- 6. feladat
SELECT DISTINCT `nev`, `terem` FROM `projektorok` where `atalakito` = 'HDMI->VGA'

-- 7. feladat
SELECT DISTINCT `nev`, `terem` FROM `projektorok` where `hangszoro` = 'Logi 5.1'

-- 8. feladat
SELECT `nev` FROM `projektorok` where `terem` IS NULL

-- 9. feladat
SELECT `nev` FROM `projektorok` where `hangszoro` IS NULL and `nev` is not NULL order by `nev`

-- 10. feladat
SELECT `nev` FROM `projektorok` where `atalakito` IS NOT NULL order by `nev`

-- 11. feladat
SELECT DISTINCT `nev` FROM `projektorok` where `projektor` in (1,3,4) ORDER BY `nev`

-- 12. feladat
SELECT COALESCE(`nev`,'ismeretlen'), COALESCE(`terem`, 'ismeretlen') FROM `projektorok` where `elvitte` is not null and `visszahozta` is null

-- 13. feladat
SELECT `terem`, `elvitte` FROM `projektorok` order by `elvitte` desc limit 1

-- 14. feladat
SELECT `nev` FROM `projektorok` WHERE `terem` between 15 and 25 

-- 15. feladat
SELECT `nev` FROM `projektorok` WHERE `terem` BETWEEN 100 and 199 and `hangszoro` is not null

-- 16. feladat
SELECT `projektor`, `elvitte` FROM `projektorok` WHERE `nev` is null and `visszahozta` is null

-- 17. feladat
SELECT `nev`, `visszahozta` FROM `projektorok` WHERE `visszahozta` is not null ORDER BY `visszahozta` LIMIT 1
