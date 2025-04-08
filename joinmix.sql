-- 3. feladat
select a.gyarto, a.tipus, s.nev from auto a, szin s where a.szin_id = s.id order by a.gyarto, a.tipus;

-- 4. feladat
select s.nev, count(a.rendszam) as szin_db from auto a, szin s where a.szin_id = s.id group by s.nev order by szin_db;

-- 5. feladat
select s.vnev, s.knev, a.rendszam from szemely s, auto a where s.id = a.tulaj;

-- 6. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Teljes Név' from szemely sz, auto a, szin s where sz.id = a.tulaj and a.szin_id = s.id and s.nev = 'barna';

-- 7. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Teljes Név', h.fajta, h.nev from szemely sz, tulaj t, hazikedvenc h where sz.id = t.szemely_id and t.hazikedvenc_id = h.id order by h.nev, 'Teljes Név';

-- 8. feladat
select count(*) as db from hazikedvenc h where h.fajta = 'cica';

-- 9. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Teljes Név', sz.kor from szemely sz, tulaj t, hazikedvenc h where sz.id = t.szemely_id and t.hazikedvenc_id = h.id and h.nev = 'Lilla' order by h.nev, 'Teljes Név';

-- 10. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Teljes Név', count(h.nev) as db from szemely sz, tulaj t, hazikedvenc h where sz.id = t.szemely_id and t.hazikedvenc_id = h.id group by concat_ws(' ', sz.vnev, sz.knev) order by concat_ws(' ', sz.vnev, sz.knev) desc;

-- 11. feladat
select h.fajta, concat_ws(' ', sz.vnev, sz.knev) as 'Tulaj Név', count(h.nev) as db from szemely sz, tulaj t, hazikedvenc h where sz.id = t.szemely_id and t.hazikedvenc_id = h.id group by h.fajta, concat_ws(' ', sz.vnev, sz.knev) order by count(h.nev) desc, h.fajta;

-- 12. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Tulaj Név', ta.nev from szemely sz, tanulja t, tantargy ta where sz.id = t.szemely_id and t.tantargy_id = ta.id order by concat_ws(' ', sz.vnev, sz.knev), ta.nev;

-- 13. feladat
select round(avg(sz.kor), 2) as 'PHP-t tanulok átlag kora' from szemely sz, tanulja t, tantargy ta where sz.id = t.szemely_id and t.tantargy_id = ta.id and ta.nev = 'PHP';

-- 14. feladat
select h.nev from auto a, szemely sz, tulaj t, hazikedvenc h where a.tulaj = sz.id and sz.id = t.szemely_id and t.hazikedvenc_id = h.id and a.rendszam = 'AAA-666';

-- 15. feladat
select ta.nev from szin sz, auto a, szemely s, tanulja t, tantargy ta where sz.id = a.szin_id and a.tulaj = s.id and s.id = t.szemely_id and t.tantargy_id = ta.id and sz.nev = 'fehér';

-- 16. feladat
select count(t.szemely_id) as 'Adatbázist tanulók száma' from tanulja t, tantargy ta where t.tantargy_id = ta.id and ta.nev like 'Adatbázis%';

-- 17. feladat
select concat_ws(' ', s.vnev, s.knev) as 'Teljes Név' from auto a, szemely s, tanulja t, tantargy ta where a.tulaj = s.id and s.id = t.szemely_id and t.tantargy_id = ta.id and ta.nev = 'Diszkrét matematika' and a.gyarto = 'VW';

-- 18. feladat
select sz.vnev, sz.knev, sz.kor, h.nev from szin s, auto a, szemely sz, tulaj tu, hazikedvenc h, tanulja t, tantargy ta where s.id = a.szin_id and a.tulaj = sz.id and sz.id = tu.szemely_id and tu.hazikedvenc_id = h.id and t.szemely_id = sz.id and t.tantargy_id = ta.id and s.nev = 'fehér' and ta.nev = 'Hálózatok';

-- 19. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Több állattal rendelkező személyek' from szemely sz, tulaj t where sz.id = t.szemely_id group by concat_ws(' ', sz.vnev, sz.knev) having count(*) > 1 order by concat_ws(' ', sz.vnev, sz.knev);

-- 20. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Kocsival nem rendelkezők' from szemely sz left join auto a on sz.id = a.tulaj where a.tulaj is null;

-- 21. feladat
select concat_ws(' ', sz.vnev, sz.knev) as 'Házikedvencel nem rendelkezők' from szemely sz left join tulaj t on sz.id = t.szemely_id where t.hazikedvenc_id is null;

-- 22. feladat
select ta.nev from tantargy ta left join tanulja t on t.tantargy_id = ta.id where t.szemely_id is null;