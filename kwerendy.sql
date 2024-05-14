select p.imie, p.nazwisko ,k.nazwa from pilkarz p
inner join klub k
on k.id=p.id_klubu;

SELECT m.id, t.godzina_rozpoczecia, t.godzina_zakonczenia, t.data_meczu, m.ilosc_zoltych_kartek, m.ilosc_czerwonych_kartek
FROM mecz m, termin t
WHERE m.id_termin = t.id;

SELECT MIN(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as najmniej_kartek_w_meczach, MAX(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as najwiecej_kartek_w_meczach, avg(ilosc_zoltych_kartek+ilosc_czerwonych_kartek) as srednia_kartek_w_meczach from mecz;

