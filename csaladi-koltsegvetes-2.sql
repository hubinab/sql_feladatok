-- 3. feladat
SELECT `kategoria`, SUM(`mennyiseg`) as `db` FROM `kiadasok` GROUP BY `kategoria` ORDER BY `db`

-- 4. feladat
SELECT `nev`, SUM(`mennyiseg` * `egysegar`) as `koltes` FROM `kiadasok` GROUP BY `nev` ORDER BY `koltes` DESC

-- 5. feladat
SELECT `nev`, sum(`mennyiseg`) as `db` FROM `kiadasok` GROUP BY `nev` ORDER BY `nev` DESC

-- 6. feladat
SELECT `nev`, `kategoria`, sum(`mennyiseg`) as `db` FROM `kiadasok` GROUP BY `nev`, `kategoria` ORDER BY `nev` DESC, `kategoria`

-- 7. feladat
SELECT `kategoria`, MIN(`egysegar`) as `minimum_ar` FROM `kiadasok` GROUP BY `kategoria` ORDER BY `minimum_ar`

-- 8. feladat
SELECT `kategoria`, round(AVG(`egysegar`*`mennyiseg`), 1) as `koltes` FROM `kiadasok` WHERE `nev` in("Mariann","Lajos") GROUP BY `kategoria` ORDER BY `kategoria`

-- 9. feladat
SELECT `kategoria`, AVG(`egysegar`*`mennyiseg`) as `koltes` FROM `kiadasok` WHERE `nev` in("Bence","Emese") GROUP BY `kategoria` ORDER BY `koltes` DESC LIMIT 1

-- 10. feladat
SELECT `nev`, MIN(`egysegar`*`mennyiseg`) as `legolcsobb_koltes`, MAX(`egysegar`*`mennyiseg`) FROM `kiadasok` GROUP BY `nev` ORDER BY `nev` DESC

-- 11. feladat
SELECT `nap`, `kategoria`, SUM(`mennyiseg`) as `mennyiseg` FROM `kiadasok` GROUP BY `nap`, `kategoria` ORDER BY `mennyiseg` DESC

-- 12. feladat
SELECT `nev`, `kategoria`, SUM(`mennyiseg`*`egysegar`) as `koltes` FROM `kiadasok` GROUP BY `nev`, `kategoria`

-- 13. feladat
SELECT `kategoria`, SUM(`mennyiseg`*`egysegar`) as `koltes` FROM `kiadasok` WHERE `nev` = "Bence" GROUP BY `kategoria` ORDER BY `koltes`

-- 14. feladat
SELECT `nev`, concat(SUM(`mennyiseg`*`egysegar`), " Ft") as `koltes` FROM `kiadasok` WHERE `kategoria` = "élelmiszer" GROUP BY `nev` ORDER BY `nev`

-- 15. feladat
SELECT `nev` FROM `kiadasok` WHERE `kategoria` = "közlekedés" GROUP BY `nev` ORDER BY (`mennyiseg`*`egysegar`) LIMIT 1
