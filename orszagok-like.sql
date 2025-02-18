-- 3. feladat
SELECT * FROM `orszagok`

-- 4. feladat
SELECT * FROM `orszagok` WHERE `fovaros` in ('Intel', 'Kingston', 'Apple', 'Fujitsu')

-- 5. feladat
SELECT `orszag` FROM `orszagok` WHERE `orszag` like '%d'

-- 6. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) like 'V%'

-- 7. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) like '%V%' order by `orszag` ASC

-- 8. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) not like 'Z%' order by `orszag` DESC

-- 9. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) not like '%O%' order by `orszag` ASC

-- 10. feladat
SELECT `orszag`, `autojel` FROM `orszagok` WHERE upper(`orszag`) like 'V%' and upper(`autojel`) not like 'V%'

-- 11. feladat
SELECT `orszag`, `fovaros` FROM `orszagok` WHERE upper(`foldr_hely`) like '%ÉSZAK-AMERIKA%'

-- 12. feladat
SELECT `orszag`, `terulet` FROM `orszagok` order by `terulet` LIMIT 1

-- 13. feladat
SELECT `orszag`, `terulet` FROM `orszagok` WHERE upper(`foldr_hely`) like '%EURÓPA%' order by `terulet` DESC LIMIT 1

-- 14. feladat
SELECT `orszag`, `terulet` FROM `orszagok` WHERE upper(`foldr_hely`) like '%KÖZÉP-EURÓPA%' order by `terulet` LIMIT 3

-- 15. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) like '%EGYESÜLT%'

-- 16. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`foldr_hely`) like '%TÖRPEÁLLAM%'

-- 17. feladat
SELECT `orszag`, `allamforma` FROM `orszagok` WHERE upper(`allamforma`) like '%MONARCHIA%';

-- 18. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`orszag`) like '%ORSZÁG%';

-- 19. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`valtopenz`) like '%CENT' and upper(`valtopenz`) not like '%EUROCENT' ORDER BY `orszag`

-- 20. feladat
SELECT `orszag`, `foldr_hely` FROM `orszagok` WHERE upper(`foldr_hely`) like '%EUROPA%' ORDER BY `orszag`, `foldr_hely`

-- 21. feladat
SELECT `penznem` FROM `orszagok` WHERE upper(`penzjel`) like '%D' and upper(`penznem`) not like '%DOLLÁR%' order by `penznem`

-- 22. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`allamforma`) like '%SZÖVETSÉG%'

-- 23. feladat
SELECT `penznem`, `orszag` FROM `orszagok` WHERE `valtopenz` not like '100 %'

-- 24. feladat
SELECT `orszag` FROM `orszagok` WHERE upper(`valtopenz`) like '%KOPEJKA%'
