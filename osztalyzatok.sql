-- 3. feladat
SELECT * FROM `jegy`

-- 4. feladat
SELECT `angol`, `matematika` FROM `jegy` WHERE `nev` = 'Tóth Csaba'

-- 5. feladat
SELECT `nev`, `angol`, `matematika`, `prog_elm`, `prog_gyak`, `tortenelem`, `fizika` FROM `jegy` WHERE `osztaly` = '9a'

-- 6. feladat
SELECT (`angol`+ `matematika`+ `prog_elm`+ `prog_gyak`+ `tortenelem`+ `fizika`)/6 `atlag` FROM `jegy` WHERE `nev` = 'Kovács Andrea'

-- 7. feladat
SELECT count(*) as db FROM `jegy` where `osztaly` like '9%'

-- 8. feladat
SELECT count(*) as db FROM `jegy` WHERE `osztaly` like '%a'

-- 9. feladat
SELECT round(AVG(`matematika`),2) as `Matematika átlag` FROM `jegy`

-- 10. feladat
SELECT `osztaly`, round(AVG(`matematika`),2) as `Angol átlag`, round(AVG(`tortenelem`), 2) as `Történelem átlag` FROM `jegy` GROUP BY `osztaly`

-- 11. feladat
SELECT `nev`, 
	round((AVG(`matematika`)+
	AVG(`angol`)+
	AVG(`prog_elm`)+
    AVG(`prog_gyak`)+
    AVG(`tortenelem`)+
    AVG(`fizika`)) / 6, 2) as `Átlag`
    FROM `jegy` 
    where `nev` like 'K%' 
    GROUP BY `nev`

-- 12. feladat
SELECT `osztaly`, round(AVG(`angol`)), MAX(`angol`), MIN(`angol`) FROM `jegy` GROUP BY `osztaly`

-- 13. feladat
SELECT `nev` FROM `jegy` where `prog_elm`>`prog_gyak`

-- 14. feladat
SELECT `nev`, `osztaly`, `matematika` FROM `jegy` ORDER BY `matematika` DESC LIMIT 3

-- 15. feladat
SELECT `osztaly`, round((AVG(`matematika`)+
	AVG(`angol`)+
	AVG(`prog_elm`)+
    AVG(`prog_gyak`)+
    AVG(`tortenelem`)+
    AVG(`fizika`)) / 6, 2) as `Átlag` FROM `jegy` GROUP BY `osztaly`

-- 16. feladat
SELECT `osztaly`, 
	AVG(`matematika`),
	AVG(`angol`),
	AVG(`prog_elm`),
    AVG(`prog_gyak`),
    AVG(`tortenelem`),
    AVG(`fizika`) FROM `jegy` 
    WHERE `osztaly` like '%a'
    GROUP BY `osztaly`
    ORDER BY AVG(`fizika`) DESC