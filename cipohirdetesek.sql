-- 3. feladat
SELECT * from `hirdetesek`

-- 4. feladat
SELECT t.`gyarto`, t.`nev` from `hirdetesek` t where t.`nem` = "n"

-- 5. feladat
SELECT `gyarto`,`nev`,date(`lejarat`) from `hirdetesek` where `aktiv` = 0

-- 6. feladat
SELECT `gyarto`, `nev`, `meret` from `hirdetesek` where `meret` <= 40 ORDER BY ar DESC

-- 7. feladat
SELECT * from `hirdetesek` where date(lejarat) > "2024-12-31"

-- 8. feladat
SELECT `nev`, `gyarto`, `meret` from `hirdetesek` where `meret` >= 42

-- 9. feladat
SELECT * from `hirdetesek` where `gyarto` in ("Gabika","Para")

-- 10. feladat
SELECT `gyarto`,`ar` from `hirdetesek` where `ar` between 20000 and 30000

-- 11. feladat
SELECT * from `hirdetesek` where `szin` = "fekete" and month(`lejarat`) = 1

-- 12. feladat
SELECT * from `hirdetesek` where `nem` in ("u","n")

-- 13. feladat
SELECT * from `hirdetesek` order by `ar`

-- 14. feladat
SELECT * from `hirdetesek` where `aktiv` = 1 and `lejarat` >= now() order by `lejarat`
	
-- 15. feladat
SELECT `gyarto`,`nev`,`ar` from `hirdetesek` order by `ar` DESC LIMIT 3

-- 16. feladat
SELECT * from `hirdetesek` where `meret` > 40 order by `meret`

-- 17. feladat
SELECT * from `hirdetesek` where date(`lejarat`) > '2024-12-31' and `aktiv` = 1

-- 18. feladat
SELECT * from `hirdetesek` where date(`lejarat`) > now() and `aktiv` = 1
	
-- 19. feladat
SELECT * from `hirdetesek` where weekday(`lejarat`) = 6 
