INSERT INTO genre(name)
VALUES ('rock'),
       ('classical'),
       ('jazz'),
       ('chanson'),
       ('pop');

INSERT INTO artist(pseudonym)
VALUES ('Depeche Mode'),
       ('The Cure'),
       ('Queen'),
       ('Michael Jackson'),
       ('Madonna'),
       ('Scorpions'),
       ('Roxette'),
       ('ABBA');

INSERT INTO album(name, year)
VALUES ('Violator', 2018),
       ('Wish', 2001),
       ('News of the Worl', 2019),
       ('Dangerous', 1991),
       ('Ray of Light', 2018),
       ('Crazy World', 2020),
       ('The Ballad Hits', 2002),
       ('Arrival', 1976);

INSERT INTO track(name, duration, album_id)
VALUES ('Precious', 145, (SELECT id FROM album WHERE album.name = 'Violator')),
       ('Strangelove', 223, (SELECT id FROM album WHERE album.name = 'Violator')),
       ('Close to Me', 123, (SELECT id FROM album WHERE album.name = 'Wish')),
       ('Inbetween Days', 241, (SELECT id FROM album WHERE album.name = 'Wish')),
       ('Killer Queen', 100, (SELECT id FROM album WHERE album.name = 'News of the Worl')),
       ('Radio Ga Ga', 122, (SELECT id FROM album WHERE album.name = 'News of the Worl')),
       ('Billie Jean', 153, (SELECT id FROM album WHERE album.name = 'Dangerous')),
       ('Beat It', 141, (SELECT id FROM album WHERE album.name = 'Dangerous')),
       ('Frozen', 132, (SELECT id FROM album WHERE album.name = 'Ray of Light')),
       ('No One Like You', 211, (SELECT id FROM album WHERE album.name = 'Crazy World')),
       ('Still Loving You', 213, (SELECT id FROM album WHERE album.name = 'Crazy World')),
       ('Fading Like a Flower', 187, (SELECT id FROM album WHERE album.name = 'The Ballad Hits')),
       ('Spending My Time', 203, (SELECT id FROM album WHERE album.name = 'The Ballad Hits')),
       ('Waterloo', 323, (SELECT id FROM album WHERE album.name = 'Arrival')),
       ('Mamma Mia', 242, (SELECT id FROM album WHERE album.name = 'Arrival'));

INSERT INTO compilation (name, year)
VALUES ('Eternal hits', 1992),
       ('Greatest hits',2019),
       ('High-profile news',2018),
       ('For a party',2002),
       ('Dawn',2001),
       ('Popular',2020),
       ('Dark side of jazz',1999),
       ('Louder about music',2003);

INSERT INTO artist_genre(artist_id, genre_id)
VALUES ((SELECT id FROM artist WHERE artist.pseudonym = 'Depeche Mode'),
        (SELECT id FROM genre WHERE genre.name = 'rock')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'The Cure'),
       (SELECT id FROM genre WHERE genre.name = 'jazz')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Queen'),
        (SELECT id FROM genre WHERE genre.name = 'pop')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Michael Jackson'),
       (SELECT id FROM genre WHERE genre.name = 'rock')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Madonna'),
        (SELECT id FROM genre WHERE genre.name = 'classical')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Scorpions'),
        (SELECT id FROM genre WHERE genre.name = 'chanson')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Roxette'),
        (SELECT id FROM genre WHERE genre.name = 'jazz')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'ABBA'),
        (SELECT id FROM genre WHERE genre.name = 'pop'));

INSERT INTO artist_album(artist_id, album_id)
VALUES ((SELECT id FROM artist WHERE artist.pseudonym = 'Depeche Mode'),
        (SELECT id FROM album WHERE album.name = 'Violator')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'The Cure'),
       (SELECT id FROM album WHERE album.name = 'Wish')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Queen'),
        (SELECT id FROM album WHERE album.name = 'News of the Worl')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Michael Jackson'),
       (SELECT id FROM album WHERE album.name = 'Dangerous')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Madonna'),
        (SELECT id FROM album WHERE album.name = 'Ray of Light')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Scorpions'),
        (SELECT id FROM album WHERE album.name = 'Crazy World')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'Roxette'),
        (SELECT id FROM album WHERE album.name = 'The Ballad Hits')),
       ((SELECT id FROM artist WHERE artist.pseudonym = 'ABBA'),
        (SELECT id FROM album WHERE album.name = 'Arrival'));

INSERT INTO compilation_track(compilation_id, track_id)
VALUES ((SELECT id FROM compilation WHERE compilation.name = 'Eternal hits'),
        (SELECT id FROM track WHERE track.name = 'Precious')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Eternal hits'),
        (SELECT id FROM track WHERE track.name = 'Strangelove')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Greatest hits'),
       (SELECT id FROM track WHERE track.name = 'Close to Me')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Greatest hits'),
        (SELECT id FROM track WHERE track.name = 'Inbetween Days')),
       ((SELECT id FROM compilation WHERE compilation.name = 'High-profile news'),
        (SELECT id FROM track WHERE track.name = 'Killer Queen')),
       ((SELECT id FROM compilation WHERE compilation.name = 'High-profile news'),
        (SELECT id FROM track WHERE track.name = 'Radio Ga Ga')),
       ((SELECT id FROM compilation WHERE compilation.name = 'For a party'),
        (SELECT id FROM track WHERE track.name = 'Billie Jean')),
       ((SELECT id FROM compilation WHERE compilation.name = 'For a party'),
        (SELECT id FROM track WHERE track.name = 'Beat It')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Dawn'),
        (SELECT id FROM track WHERE track.name = 'Frozen')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Dawn'),
        (SELECT id FROM track WHERE track.name = 'No One Like You')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Popular'),
        (SELECT id FROM track WHERE track.name = 'Still Loving You')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Popular'),
        (SELECT id FROM track WHERE track.name = 'Fading Like a Flower')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Dark side of jazz'),
        (SELECT id FROM track WHERE track.name = 'Spending My Time')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Dark side of jazz'),
        (SELECT id FROM track WHERE track.name = 'Waterloo')),
       ((SELECT id FROM compilation WHERE compilation.name = 'Louder about music'),
        (SELECT id FROM track WHERE track.name = 'Mamma Mia'));

