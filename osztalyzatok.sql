-- 3. feladat
SELECT * FROM `jegy`

-- 4. feladat
SELECT `angol`, `matematika` FROM `jegy` WHERE `nev` = 'Tóth Csaba'

-- 5. feladat
SELECT `nev`, `angol`, `matematika`, `prog_elm`, `prog_gyak`, `tortenelem`, `fizika` FROM `jegy` WHERE `osztaly` = '9a'

-- 6. feladat
SELECT (`angol`+ `matematika`+ `prog_elm`+ `prog_gyak`+ `tortenelem`+ `fizika`)/6 `atlag` FROM `jegy` WHERE `nev` = 'Kovács Andrea'

-- 7. feladat
SELECT count(*) FROM `jegy` where `osztaly` like '9%'

-- 8. feladat

-- 9. feladat

-- 10. feladat

-- 11. feladat

-- 12. feladat

-- 13. feladat

-- 14. feladat

-- 15. feladat

-- 16. feladat