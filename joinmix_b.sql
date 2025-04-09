-- 3. feladat
SELECT `a`.`gyarto`, `a`.`tipus`, `s`.`nev` 
FROM `auto` `a`, `szin` `s` 
WHERE `a`.`szin_id` = `s`.`id` 
ORDER BY `a`.`gyarto`, `a`.`tipus`;

-- 4. feladat
SELECT `s`.`nev`, COUNT(`a`.`rendszam`) AS `szin_db` 
FROM `auto` `a`, `szin` `s` 
WHERE `a`.`szin_id` = `s`.`id` 
GROUP BY `s`.`nev` 
ORDER BY `szin_db`;

-- 5. feladat
SELECT `s`.`vnev`, `s`.`knev`, `a`.`rendszam` 
FROM `szemely` `s`, `auto` `a` 
WHERE `s`.`id` = `a`.`tulaj`;

-- 6. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Teljes Név` 
FROM `szemely` `sz`, `auto` `a`, `szin` `s` 
WHERE `sz`.`id` = `a`.`tulaj` AND `a`.`szin_id` = `s`.`id` AND `s`.`nev` = 'barna';

-- 7. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Teljes Név`, `h`.`fajta`, `h`.`nev` 
FROM `szemely` `sz`, `tulaj` `t`, `hazikedvenc` `h` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`hazikedvenc_id` = `h`.`id` 
ORDER BY `h`.`nev`, `Teljes Név`;

-- 8. feladat
SELECT COUNT(*) AS `db` 
FROM `hazikedvenc` `h` 
WHERE `h`.`fajta` = 'cica';

-- 9. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Teljes Név`, `sz`.`kor` 
FROM `szemely` `sz`, `tulaj` `t`, `hazikedvenc` `h` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`hazikedvenc_id` = `h`.`id` AND `h`.`nev` = 'Lilla' 
ORDER BY `h`.`nev`, `Teljes Név`;

-- 10. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Teljes Név`, COUNT(`h`.`nev`) AS `db` 
FROM `szemely` `sz`, `tulaj` `t`, `hazikedvenc` `h` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`hazikedvenc_id` = `h`.`id` 
GROUP BY CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) 
ORDER BY CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) DESC;

-- 11. feladat
SELECT `h`.`fajta`, CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Tulaj Név`, COUNT(`h`.`nev`) AS `db` 
FROM `szemely` `sz`, `tulaj` `t`, `hazikedvenc` `h` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`hazikedvenc_id` = `h`.`id` 
GROUP BY `h`.`fajta`, CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) 
ORDER BY COUNT(`h`.`nev`) DESC, `h`.`fajta`;

-- 12. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Tulaj Név`, `ta`.`nev` 
FROM `szemely` `sz`, `tanulja` `t`, `tantargy` `ta` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`tantargy_id` = `ta`.`id` 
ORDER BY CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`), `ta`.`nev`;

-- 13. feladat
SELECT ROUND(AVG(`sz`.`kor`), 2) AS `PHP-t tanulok átlag kora` 
FROM `szemely` `sz`, `tanulja` `t`, `tantargy` `ta` 
WHERE `sz`.`id` = `t`.`szemely_id` AND `t`.`tantargy_id` = `ta`.`id` AND `ta`.`nev` = 'PHP';

-- 14. feladat
SELECT `h`.`nev` 
FROM `auto` `a`, `szemely` `sz`, `tulaj` `t`, `hazikedvenc` `h` 
WHERE `a`.`tulaj` = `sz`.`id` AND `sz`.`id` = `t`.`szemely_id` AND `t`.`hazikedvenc_id` = `h`.`id` AND `a`.`rendszam` = 'AAA-666';

-- 15. feladat
SELECT `ta`.`nev` 
FROM `szin` `sz`, `auto` `a`, `szemely` `s`, `tanulja` `t`, `tantargy` `ta` 
WHERE `sz`.`id` = `a`.`szin_id` AND `a`.`tulaj` = `s`.`id` AND `s`.`id` = `t`.`szemely_id` AND `t`.`tantargy_id` = `ta`.`id` AND `sz`.`nev` = 'fehér';

-- 16. feladat
SELECT COUNT(`t`.`szemely_id`) AS `Adatbázist tanulók száma` 
FROM `tanulja` `t`, `tantargy` `ta` 
WHERE `t`.`tantargy_id` = `ta`.`id` AND `ta`.`nev` LIKE 'Adatbázis%';

-- 17. feladat
SELECT CONCAT_WS(' ', `s`.`vnev`, `s`.`knev`) AS `Teljes Név` 
FROM `auto` `a`, `szemely` `s`, `tanulja` `t`, `tantargy` `ta` 
WHERE `a`.`tulaj` = `s`.`id` AND `s`.`id` = `t`.`szemely_id` AND `t`.`tantargy_id` = `ta`.`id` AND `ta`.`nev` = 'Diszkrét matematika' AND `a`.`gyarto` = 'VW';

-- 18. feladat
SELECT `sz`.`vnev`, `sz`.`knev`, `sz`.`kor`, `h`.`nev` 
FROM `szin` `s`, `auto` `a`, `szemely` `sz`, `tulaj` `tu`, `hazikedvenc` `h`, `tanulja` `t`, `tantargy` `ta` 
WHERE `s`.`id` = `a`.`szin_id` AND `a`.`tulaj` = `sz`.`id` AND `sz`.`id` = `tu`.`szemely_id` AND `tu`.`hazikedvenc_id` = `h`.`id` AND `t`.`szemely_id` = `sz`.`id` AND `t`.`tantargy_id` = `ta`.`id` AND `s`.`nev` = 'fehér' AND `ta`.`nev` = 'Hálózatok';

-- 19. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Több állattal rendelkező személyek` 
FROM `szemely` `sz`, `tulaj` `t` 
WHERE `sz`.`id` = `t`.`szemely_id` 
GROUP BY CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) 
HAVING COUNT(*) > 1 
ORDER BY CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`);

-- 20. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Kocsival nem rendelkezők` 
FROM `szemely` `sz` 
LEFT JOIN `auto` `a` ON `sz`.`id` = `a`.`tulaj` 
WHERE `a`.`tulaj` IS NULL;

-- 21. feladat
SELECT CONCAT_WS(' ', `sz`.`vnev`, `sz`.`knev`) AS `Házikedvencel nem rendelkezők` 
FROM `szemely` `sz` 
LEFT JOIN `tulaj` `t` on `sz`.`id` = `t`.`szemely_id` 
where `t`.`hazikedvenc_id` is null;

-- 22. feladat
select `ta`.`nev` from `tantargy` `ta` 
left join `tanulja` `t` on `t`.`tantargy_id` = `ta`.`id` 
where `t`.`szemely_id` is null;
