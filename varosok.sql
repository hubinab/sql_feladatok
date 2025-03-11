-- 3. feladat
SELECT * FROM `magyarorszag`

-- 4. feladat
SELECT DISTINCT `tipus` FROM `magyarorszag` order by `tipus`

-- 5. feladat
SELECT count(*) as `varosok_szama` FROM `magyarorszag` order by `tipus`

-- 6. feladat
SELECT count(DISTINCT `tipus`) as `tipus_db` FROM `magyarorszag`

-- 7. feladat
SELECT count(`nev`) as `db` FROM `magyarorszag` WHERE `megye` = "Csongrád-Csanád"

-- 8. feladat
SELECT count(`nev`) as `db` FROM `magyarorszag` WHERE trim(length(`nev`)) = 4

-- 9. feladat
SELECT count(`nev`) as `db` FROM `magyarorszag` WHERE `megye` in ("Békés","Fejér")

-- 10. feladat
SELECT `megye`, count(`nev`) as `db` FROM `magyarorszag` GROUP BY `megye` ORDER BY `db` DESC

-- 11. feladat
SELECT MAX(`varos_cim_elnyerese`) as `ev` FROM `magyarorszag`

-- 12. feladat
SELECT `megye`, MAX(`varos_cim_elnyerese`) as `ev` FROM `magyarorszag` GROUP BY `megye` ORDER BY `nev`

-- 13. feladat
SELECT MIN(`nepesseg`) as `minimum_lakossag` FROM `magyarorszag`

-- 14. feladat
SELECT MAX(`nepesseg`) as `minimum_lakossag` FROM `magyarorszag`

-- 15. feladat
SELECT MAX(`terulet`) as `maximum_terulet` FROM `magyarorszag`

-- 16. feladat
SELECT `nev`, `terulet` FROM `magyarorszag` order by `terulet` DESC LIMIT 3

-- 17. feladat
SELECT `nev`, `terulet` FROM `magyarorszag` WHERE `megye` = "Somogy" order by `terulet` DESC LIMIT 3

-- 18. feladat
SELECT `nev`, round(`nepesseg`/`terulet`,4) as `nepsuruseg` FROM `magyarorszag` ORDER BY `nepesseg`/`terulet` DESC LIMIT 1

-- 19. feladat
SELECT SUM(`nepesseg`) as `lakossag` FROM `magyarorszag` WHERE `tipus` = "járásszékhely város"

-- 20. feladat
SELECT round(SUM(`terulet`),2) as `osszterulet` FROM `magyarorszag` WHERE `varos_cim_elnyerese` BETWEEN 2000 AND 2012

-- 21. feladat
SELECT `megye`, SUM(`nepesseg`) as `lakossag` FROM `magyarorszag` GROUP BY `megye` ORDER BY `megye`

-- 22. feladat
SELECT `megye`, round(SUM(`nepesseg`)/count(`tipus`),0) as `lakossag` FROM `magyarorszag` WHERE lower(`tipus`) LIKE "%város%" GROUP BY `megye` ORDER BY `lakossag` DESC, `megye`

-- 23. feladat
SELECT `jaras`, round(SUM(`terulet`)/count(`tipus`),2) as `atlag_terulet` FROM `magyarorszag` WHERE lower(`tipus`) LIKE "%város%" GROUP BY `jaras` ORDER BY `atlag_terulet`

-- 24. feladat
SELECT `nev`, concat(`nepesseg`, " fő") as `lakossag` FROM `magyarorszag` WHERE `tipus` like "%megyei jogú város%" GROUP BY `nev` ORDER BY `nepesseg` DESC LIMIT 1

-- 25. feladat
SELECT `jaras`, concat(round(AVG(`terulet`)*1000000, 0), " négyzetméter") as `terulet` FROM `magyarorszag`  GROUP BY `jaras` ORDER BY AVG(`terulet`)
