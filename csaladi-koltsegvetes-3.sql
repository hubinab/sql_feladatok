-- 3. feladat
SELECT `nap` FROM `kiadasok` group by `nap` having sum(`mennyiseg`*`egysegar`)>=20000

-- 4. feladat
SELECT `nap` FROM `kiadasok` WHERE `nev`='Lajos' group by `nap` having sum(`mennyiseg`*`egysegar`)>16000

-- 5. feladat
SELECT `nap` FROM `kiadasok` WHERE `nev`='Emese' group by `nap` having sum(`mennyiseg`*`egysegar`)<50000

-- 6. feladat
SELECT `kategoria`, sum(`mennyiseg`*`egysegar`) as `koltes` FROM `kiadasok` WHERE `nev` in ('Mariann','Lajos') group by `kategoria` ORDER BY `koltes`

-- 7. feladat
SELECT `kategoria` FROM `kiadasok` WHERE `nev` in ('Mariann','Lajos') group by `kategoria` having sum(`mennyiseg`*`egysegar`)>30000
