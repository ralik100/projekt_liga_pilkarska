select p.imie, p.nazwisko ,k.nazwa from pilkarz p
inner join klub k
on k.id=p.id_klubu;

SELECT m.id, t.godzina_rozpoczecia, t.godzina_zakonczenia, t.data_meczu, m.ilosc_zoltych_kartek, m.ilosc_czerwonych_kartek
FROM mecz m, termin t
WHERE m.id_termin = t.id;

SELECT MIN(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as najmniej_kartek_w_meczach, MAX(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as najwiecej_kartek_w_meczach, avg(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as srednia_kartek_w_meczach from mecz;

select * from liga where nazwa LIKE '%Lig%';

select * from klub where ilosc_punktow > (
  SELECT AVG(ilosc_punktow) from klub);

select imie, nazwisko from pilkarz where id_klubu = (
  SELECT id from klub where id_liga = (
  SELECT id from liga where kraj = 'Anglia'));

select id_liga, nazwa from klub kk where ilosc_punktow > (
  SELECT AVG(ilosc_punktow) from klub WHERE id_liga=kk.id_liga);

select * from pilkarz where id_klubu is NULL;

select * from mecz where id not IN
(SELECT id_meczu from spotkanie);

select * from klub k where not EXISTS (SELECT id_klubu from sklad where id_klubu=k.id);

CREATE VIEW English_Clubs AS
SELECT * from klub where id_liga in(
  SELECT id from liga where kraj = 'Anglia');

UPDATE sklad
set czy_gra_w_meczu=FALSE
where id = 5;

delete from pilkarz where reprezentowany_kraj = 'Urugwaj';