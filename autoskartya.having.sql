-- 3. feladat
SELECT `gyartasi_ev`, `orszag`, count(*) FROM `autoskartya` GROUP BY `gyartasi_ev`, `orszag` ORDER BY `gyartasi_ev`, `orszag`;

-- 4. feladat
SELECT `gyartmany`, concat(round(avg(`kilowatt`), 2), " kw") as `atlagos_teljesitmeny` FROM `autoskartya` WHERE `orszagkod` = 'D' GROUP BY `gyartmany` ORDER BY avg(`kilowatt`);

-- 5. feladat
SELECT `gyartmany`, max(`gyorsulas`) as `leggyorsabb` FROM `autoskartya` GROUP BY `gyartmany` ORDER BY max(`gyorsulas`);

-- 6. feladat
SELECT `gyartmany`, `tipus`, `gyorsulas` FROM `autoskartya` WHERE `gyartmany` in ('Fiat', 'Opel', 'Volvo') ORDER BY `gyorsulas` LIMIT 1;

-- 7. feladat
SELECT `gyartmany`, max(`hengerurtartalom`) as `legnagyobb_hengerurtartalom` FROM `autoskartya` GROUP BY `gyartmany` ORDER BY max(`hengerurtartalom`) DESC;

-- 8. feladat
SELECT `gyartasi_ev`, `gyartmany`, round(avg(`fogyasztas`), 1) as `atlag` FROM `autoskartya` GROUP BY `gyartasi_ev`, `gyartmany` ORDER BY `gyartmany`, `gyartasi_ev` DESC;

-- 9. feladat
SELECT `gyartmany`, SUM(`loero`) as `ossz_loero` FROM `autoskartya` GROUP BY `gyartmany` HAVING `ossz_loero` > 300 ORDER BY SUM(`loero`) DESC;

-- 10. feladat
SELECT `gyartmany`, count(*) as `db` FROM `autoskartya` GROUP BY `gyartmany` HAVING `db` >= 2 ORDER BY `gyartmany` DESC;

-- 11. feladat
SELECT `gyartasi_ev`, `orszag` FROM `autoskartya` GROUP BY `gyartasi_ev`, `orszag` HAVING count(*) >= 2 ORDER BY `gyartasi_ev`, `orszag`;

-- 12. feladat
SELECT `gyartmany` FROM `autoskartya` WHERE `orszagkod` in ('D', 'S') GROUP BY `gyartmany` HAVING count(*) >= 2;

-- 13. feladat
SELECT `gyartmany` FROM `autoskartya` GROUP BY `gyartmany` HAVING MAX(`fogyasztas`) < 10.5 ORDER BY `gyartmany`;

-- 14. feladat
SELECT `gyartmany` FROM `autoskartya` GROUP BY `gyartmany` HAVING COUNT(*) = 1 ORDER BY `gyartmany`;

-- 15. feladat
SELECT `orszag`, `orszagkod`, count(*) as `db` FROM `autoskartya` GROUP BY `orszag`, `orszagkod` HAVING `db` >= 2 ORDER BY `orszag`;

-- 16. feladat
SELECT `orszag`, `orszagkod`, COUNT(DISTINCT `gyartmany`) AS `db` FROM `autoskartya` GROUP BY `orszag`, `orszagkod` HAVING `db` > 2 ORDER BY COUNT(DISTINCT `gyartmany`) DESC;

-- 17. feladat
SELECT `orszag` FROM `autoskartya` GROUP BY `orszag` HAVING AVG(`vegsebesseg`) <= 160 ORDER BY COUNT(DISTINCT `gyartmany`) DESC;

-- 18. feladat
SELECT `gyartmany` FROM `autoskartya` WHERE `orszagkod` ='D' GROUP BY `gyartmany` HAVING SUM(`loero`) <= 200 ORDER BY `gyartmany`;

