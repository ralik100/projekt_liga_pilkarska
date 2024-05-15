INSERT INTO termin (godzina_rozpoczecia, godzina_zakonczenia, data_meczu)
VALUES 
(14, 16, '2024-05-10'),
(15, 17, '2024-05-12'),
(16, 18, '2024-05-15'),
(13, 15, '2024-05-17'),
(16, 18, '2024-05-20'),
(18, 20, '2024-05-22'),
(14, 16, '2024-05-25'),
(16, 18, '2024-05-28'),
(15, 17, '2024-06-01'),
(17, 19, '2024-06-05');

INSERT INTO liga (nazwa, ilosc_druzyn, kraj) VALUES
('Premier League', 20, 'Anglia'),
('La Liga', 20, 'Hiszpania'),
('Bundesliga', 18, 'Niemcy'),
('Serie A', 20, 'Włochy'),
('Ligue 1', 20, 'Francja'),
('Eredivisie', 18, 'Holandia'),
('Primeira Liga', 18, 'Portugalia'),
('Super Lig', 20, 'Turcja'),
('Russian Premier League', 16, 'Rosja'),
('MLS', 26, 'USA');

INSERT INTO mecz (id_termin, ilosc_zoltych_kartek, ilosc_czerwonych_kartek) VALUES
(1, 3, 0),
(2, 2, 1),
(3, 1, 0),
(4, 4, 2),
(5, 2, 0),
(6, 2, 0),
(7, 3, 1),
(8, 1, 0),
(9, 4, 2),
(10, 2, 0);

INSERT INTO klub (id_liga, nazwa, data_powstania, miejsce_w_lidze, ilosc_punktow) VALUES
(1, 'Manchester United', '1878-03-05', 5, 63),
(1, 'Manchester City', '1880-04-16', 1, 100),
(2, 'Real Madrid', '1902-03-06', 3, 75),
(3, 'Bayern Monachium', '1900-02-27', 2, 78),
(4, 'Juventus Turyn', '1897-11-01', 4, 70),
(5, 'Paris Saint-Germain', '1970-08-12', 1, 82),
(6, 'Ajax Amsterdam', '1900-03-18', 1, 82),
(7, 'FC Porto', '1893-09-28', 2, 76),
(8, 'Galatasaray', '1905-10-01', 3, 71),
(9, 'Zenit St. Petersburg', '1925-05-25', 4, 68),
(10, 'Los Angeles Galaxy', '1994-06-15', 10, 49);

INSERT INTO sklad (id_klubu, czy_gra_w_meczu) VALUES
(1, TRUE),
(2, TRUE),
(3, TRUE),
(4, FALSE),
(5, TRUE),
(6, TRUE),
(7, TRUE),
(8, FALSE),
(9, TRUE),
(10, TRUE),
(1, FALSE);


INSERT INTO pilkarz (id_sklad, id_klubu, imie, nazwisko, data_urodzenia,reprezentowany_kraj, nr_na_koszulce, czy_pauzuje) VALUES
(1, 1, 'David', 'Beckham', '1975-05-02','Anglia', 7, FALSE),
(2, 2, 'Cristiano', 'Ronaldo', '1985-02-05','Portugalia', 7, FALSE),
(3, 3, 'Robert', 'Lewandowski', '1988-08-21','Polska', 9, FALSE),
(NULL, NULL, 'Gianluigi', 'Buffon', '1978-01-28','Włochy', NULL, NULL),
(5, 5, 'Neymar', 'Junior', '1992-02-05','Brazylia', 10, FALSE),
(6, 6, 'Donny', 'van de Beek', '1997-04-18','Holandia', 6, FALSE),
(7, 7, 'Pepe', 'Anderson', '1987-04-05','Portugalia', 11, FALSE),
(8, 8, 'Radamel', 'Falcao', '1986-02-10','Urugwaj', 9, FALSE),
(9, 9, 'Artem', 'Dzyuba', '1988-08-22','Rosja', 22, FALSE),
(10, 10, 'Chicharito', 'Hernandez', '1988-06-01','Meksyk', 14, FALSE),
(NULL,NULL,'Gerard','Pique','1987-02-02','Hiszpania',NULL,NULL);


INSERT INTO spotkanie (id_meczu, id_klubu, ilosc_bramek, czy_wygrany) VALUES
(1, 1, 2, TRUE),
(1, 2, 1, FALSE),
(2, 2, 3, TRUE),
(2, 3, 2, FALSE),
(3, 3, 4, TRUE),
(6, 6, 3, TRUE),
(6, 7, 2, FALSE),
(7, 7, 1, FALSE),
(7, 8, 2, TRUE),
(8, 9, 0, FALSE);


