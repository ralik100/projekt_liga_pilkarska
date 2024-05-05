create table termin
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    godzina_rozpoczecia INTEGER,
    godzina_zakonczenia INTEGER,
    data_meczu DATE,
    PRIMARY KEY(id)
);

create table liga
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    nazwa TEXT,
    ilosc_druzyn INTEGER,
    kraj TEXT,
    PRIMARY KEY(id)
);

create table mecz
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    id_termin INTEGER,
    ilosc_zoltych_kartek INTEGER,
    ilosc_czerwonych_kartek INTEGER,
    ilosc_bramek INTEGER,
    czy_wygrany BOOLEAN,
    primary key(id),
    constraint fk_termin
        foreign key (id_termin)
        references termin(id)
);

create table klub
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    id_liga INTEGER,
    nazwa TEXT,
    data_powstania DATE,
    id_sklad INTEGER,
    miejsce_w_lidze INTEGER,
    ilosc_punktow INTEGER,
    primary key(id),
    constraint fk_liga
        foreign key (id_liga)
        references liga(id)
);


create table sklad
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    id_klubu INTEGER,
    czy_gra_w_meczu BOOLEAN,
    primary key(id),
    constraint fk_klub
        foreign key (id_klubu)
        references klub(id)
);

create table pilkarz
(
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    id_sklad INTEGER,
    id_klubu INTEGER,
    imie TEXT,
    nazwisko TEXT,
    data_urodzenia DATE,
    nr_na_koszulce INTEGER,
    czy_pauzuje BOOLEAN,
    primary key(id),
    constraint fk_sklad
        foreign key (id_sklad)
        references sklad(id)
);

create table spotkanie
(
    id_meczu INTEGER,
    id_klubu INTEGER,
    constraint fk_mecz
        foreign key (id_meczu)
        references mecz(id),
    constraint fk_klub
        foreign key (id_klubu)
        references klub(id)
);