-- 3. feladat
SELECT count(*) as `db` FROM `papirpenz` WHERE `ertek` > 100;

-- 4. feladat
SELECT `penznem`, count(*) as `db` FROM `papirpenz` GROUP BY `penznem` ORDER BY count(*);

-- 5. feladat
SELECT `penznem`, count(DISTINCT `ertek`) as `db_egyedi` FROM `papirpenz` GROUP BY `penznem` ORDER BY count(DISTINCT `ertek`) DESC;

-- 6. feladat
SELECT `penznem`, MAX(`ertek`) as `legertekesebb` FROM `papirpenz` GROUP BY `penznem` ORDER BY `penznem`;

-- 7. feladat
SELECT `penznem`, `ertek`, COUNT(*) as `db` FROM `papirpenz` GROUP BY `penznem`, `ertek` having `db` >=4 ORDER BY `penznem`, `ertek`;

-- 8. feladat
SELECT `penznem`, SUM(`ertek`) AS `ossz` FROM `papirpenz` GROUP BY `penznem` having `ossz` >= 3000 ORDER BY SUM(`ertek`);
