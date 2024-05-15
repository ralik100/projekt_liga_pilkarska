create table termin
(
    id serial,
    godzina_rozpoczecia INTEGER,
    godzina_zakonczenia INTEGER,
    data_meczu DATE,
    PRIMARY KEY(id)
);

create table liga
(
    id serial,
    nazwa TEXT,
    ilosc_druzyn INTEGER,
    kraj TEXT,
    PRIMARY KEY(id)
);

create table mecz
(
    id serial,
    id_termin INTEGER,
    ilosc_zoltych_kartek INTEGER,
    ilosc_czerwonych_kartek INTEGER,
    primary key(id),
    constraint fk_termin
        foreign key (id_termin)
        references termin(id)
);

create table klub
(
    id serial,
    id_liga INTEGER,
    nazwa TEXT,
    data_powstania DATE,
    miejsce_w_lidze INTEGER,
    ilosc_punktow INTEGER,
    primary key(id),
    constraint fk_liga
        foreign key (id_liga)
        references liga(id)
);


create table sklad
(
    id serial,
    id_klubu INTEGER,
    czy_gra_w_meczu BOOLEAN,
    primary key(id),
    constraint fk_klub
        foreign key (id_klubu)
        references klub(id)
);

create table pilkarz
(
    id serial,
    id_sklad INTEGER,
    id_klubu INTEGER,
    imie TEXT,
    nazwisko TEXT,
    data_urodzenia DATE,
    reprezentowany_kraj TEXT,
    nr_na_koszulce INTEGER,
    czy_pauzuje BOOLEAN,
    primary key(id),
    constraint fk_sklad
        foreign key (id_sklad)
        references sklad(id),
    constraint fkk_klub
        foreign key (id_klubu)
        references klub(id)
);

create table spotkanie
(
    id_meczu INTEGER,
    id_klubu INTEGER,
    ilosc_bramek INTEGER,
    czy_wygrany BOOLEAN,
    constraint fk_mecz
        foreign key (id_meczu)
        references mecz(id),
    constraint fk_klub
        foreign key (id_klubu)
        references klub(id)
);