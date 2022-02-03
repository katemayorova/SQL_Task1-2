SELECT name, COUNT(artist_genre.artist_id)
FROM artist_genre
         JOIN genre on genre.id = artist_genre.genre_id
GROUP BY genre.id;

SELECT a.name, COUNT(track.id)
FROM track
         JOIN album a on a.id = track.album_id
WHERE year BETWEEN 2019 AND 2020
GROUP BY a.name;

SELECT a.name, AVG(track.id)
FROM track
         JOIN album a on a.id = track.album_id
GROUP BY a.name;

SELECT ar.pseudonym
FROM artist ar
WHERE id NOT IN (
    SELECT DISTINCT ar.id
    FROM artist ar
             JOIN artist_album aa on ar.id = aa.artist_id
             JOIN album al on al.id = aa.album_id
    WHERE year = 2020
);

SELECT c.name
FROM compilation c
         JOIN compilation_track ct on c.id = ct.compilation_id
         JOIN track t on t.id = ct.track_id
         JOIN album al on al.id = t.album_id
         JOIN artist_album aa on al.id = aa.album_id
         JOIN artist ar on ar.id = aa.artist_id
WHERE pseudonym = 'Madonna';

SELECT al.name
FROM album al
         JOIN artist_album aa on al.id = aa.album_id
         JOIN artist ar on ar.id = aa.artist_id
         JOIN artist_genre ag on aa.artist_id = ag.artist_id
         JOIN genre g on g.id = ag.genre_id
GROUP BY al.id
HAVING count(g.id) > 1;

SELECT t.name
FROM track t
         LEFT JOIN compilation_track ct on t.id = ct.track_id
WHERE ct.id IS NULL;

SELECT ar.pseudonym
FROM track t
         JOIN album a on a.id = t.album_id
         JOIN artist_album aa on a.id = aa.album_id
         JOIN artist ar on ar.id = aa.artist_id
WHERE t.duration = (SELECT MIN(duration) FROM track)
GROUP BY ar.pseudonym;

SELECT a.name
FROM album a
         JOIN track t on a.id = t.album_id
GROUP BY a.id
HAVING COUNT(t.id) = (
    SELECT COUNT(t.id) track_count
    FROM album a
             JOIN track t on a.id = t.album_id
    GROUP BY a.id
    ORDER BY track_count
    LIMIT 1
);



