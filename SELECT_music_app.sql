SELECT name, year FROM album
    WHERE year=2018;

SELECT name, duration FROM track
    WHERE duration=(SELECT MAX(duration) FROM track);

SELECT name FROM track
    WHERE duration < 210;

SELECT name FROM compilation
    WHERE year BETWEEN 2018 AND 2020;

SELECT pseudonym FROM artist
    WHERE pseudonym NOT LIKE '% %';

SELECT name FROM track
    WHERE name ILIKE '%my%';
