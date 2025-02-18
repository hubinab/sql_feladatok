-- 3. feladat
SELECT * FROM `autoskartya`

-- 4. feladat
SELECT `gyartmany`, `tipus` FROM `autoskartya` `a` WHERE (`a`.`vegsebesseg` > 240 or `a`.`loero` >= 200 ) and `a`.`orszag` = 'Németország' order by `a`.`tipus` DESC

-- 5. feladat
SELECT * FROM `autoskartya` `a` WHERE `a`.`orszag` = 'Japán' or `a`.`fogyasztas` <= 6 or (`a`.`hengerurtartalom` <= 1400 and `a`.`fogyasztas` <= 7)

-- 6. feladat
SELECT `gyartmany`, `tipus`, `gyartasi_ev` FROM `autoskartya` `a` WHERE `a`.`gyartmany` in ('Bentley', 'BMW', 'Mercedes', 'Volvo') and `a`.`kilowatt` >= 150

-- 7. feladat
SELECT DISTINCT `gyartmany` FROM `autoskartya` `a` order by `gyartmany`

-- 8. feladat
SELECT `gyartmany`, `tipus`, `loero` FROM `autoskartya` `a` order by `loero` DESC

-- 9. feladat
SELECT `tipus`, `orszag`, `vegsebesseg` FROM `autoskartya` `a` order by `orszag` ASC

-- 10. feladat
SELECT `gyartmany`, `tipus`, `orszagkod` FROM `autoskartya` `a` where `a`.`fogyasztas` < 5 and `a`.`orszag` in ('Franciaország','Németország')
