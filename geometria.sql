-- 3. feladat
SELECT * from `teglalapok`

-- 4. feladat
SELECT `szin`, `a`, `b`, `a`*`b` `terulet` FROM `teglalapok`

-- 5. feladat
SELECT `a`*`b` `terulet`, 2*(`a`+`b`) `kerulet` FROM `teglalapok` WHERE `szin` = 'sárga'

-- 6. feladat
SELECT `szin`, `a`*`b` `terulet`, 2*(`a`+`b`) `kerulet` FROM `teglalapok` WHERE `a`*`b`>=4

-- 7. feladat
SELECT * FROM `haromszogek`

-- 8. feladat
SELECT `szin`, `a`+`b`+`c` `kerulet` FROM `haromszogek`

-- 9. feladat
SELECT concat(`a`+ `b`+`c`,' cm') `kerulet` FROM `haromszogek` WHERE `szin`='sárga'

-- 10. feladat
SELECT round(`a`+ `b`+`c`, 1) `kerulet` FROM `haromszogek` WHERE `szin`='piros'

-- 11. feladat
SELECT `szin`, `a`, `b`, `c`, round(`a`+ `b`+`c`, 4) `kerulet` FROM `haromszogek` order by `kerulet` desc

-- 12. feladat
SELECT `szin`, round(`a`+ `b`+`c`, 4) `kerulet` FROM `haromszogek` WHERE `a`+ `b`+`c` > 9

-- 13. feladat
SELECT `szin` FROM `haromszogek` where `a`+`b`>`c` and `b`+`c`>`a` and `a`+`c`>`b`

-- 14. feladat
SELECT `szin` FROM `haromszogek` where not (`a`+`b`>`c` and `b`+`c`>`a` and `a`+`c`>`b`)

-- 15. feladat
SELECT * FROM `korok`

-- 16. feladat
SELECT `szin`, 2*`r`*PI() `kerulet`,  `r`*`r`*PI() `terulet` FROM `korok`

-- 17. feladat
SELECT round(2*`r`*PI(),2) `kerulet`,  ROUND(`r`*`r`*PI()) `terulet` FROM `korok` where `szin` = 'lila'

-- 18. feladat
SELECT `szin`, `r`, 2*`r` `d` FROM `korok` where `szin` in ('kék','piros')

-- 19. feladat
SELECT (concat(round(`r`*`r`*PI()*100 ,3),' mm')) FROM `korok` where `szin` in ('kék', 'piros', 'sárga') order by round(`r`*`r`*PI()*100 ,3)
