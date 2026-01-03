CREATE DATABASE imdb_sql;
USE imdb_sql;
DROP TABLE IF EXISTS genres;
CREATE TABLE genres (movie_id VARCHAR(15), genre VARCHAR(100));
select * from genres;
DROP TABLE IF EXISTS movies;
CREATE TABLE movies (
    id VARCHAR(20),
    title VARCHAR(500),
    year INT,
    date_published VARCHAR(20),
    duration INT,
    country VARCHAR(200),
    worldwide_gross_income VARCHAR(50),
    languages VARCHAR(200),
    production_company VARCHAR(300)
);
select * from movies;
  DROP TABLE IF EXISTS ratings;
CREATE TABLE ratings (
    movie_id VARCHAR(20),
    avg_rating DECIMAL(3,1),
    total_votes INT,
    median_rating DECIMAL(3,1)
);
select * from ratings;

#Count of Movies  
SELECT COUNT(*) AS total_movies FROM movies;

#Movies release per year
SELECT year, COUNT(*) AS movie_count FROM movies GROUP BY year ORDER BY year;

#Average Movies Duration
SELECT ROUND(AVG(duration),1) AS avg_duration FROM movies;

#Top 10 Highest Rated Movies
SELECT m.title, r.avg_rating FROM movies m JOIN ratings r ON m.id = r.movie_id ORDER BY r.avg_rating DESC LIMIT 10;

#Common Genre
SELECT genre, COUNT(*) AS total_movies FROM genres GROUP BY genre ORDER BY total_movies DESC;

#Average Rating by Gebre 
SELECT g.genre, ROUND(AVG(r.avg_rating),2) AS avg_rating FROM genres g JOIN ratings r ON g.movie_id = r.movie_id GROUP BY g.genre;

#Movies with More Than 100,000 Votes
SELECT m.title, r.total_votes FROM movies m JOIN ratings r ON m.movie_id = r.movie_id WHERE r.total_votes > 100;

#Country-wise Movie Count
SELECT country, COUNT(*) AS movies FROM movies GROUP BY country ORDER BY movies DESC;

#Movies Longer Than Average Duration
SELECT title, duration FROM movies WHERE duration > (SELECT AVG(duration) FROM movies);

#Average rating for each movie
SELECT m.title, AVG(r.avg_rating) AS avg_rating FROM movies m JOIN ratings r ON m.id = r.movie_id GROUP BY m.title;

#ranks the movies from highest to lowest rating
SELECT title, avg_rating, RANK() OVER (ORDER BY avg_rating DESC) AS movie_rank FROM (SELECT m.title, AVG(r.avg_rating) AS avg_rating FROM movies m JOIN ratings r ON m.id = r.movie_id GROUP BY m.title ) t;

EXPLAIN SELECT m.title, r.avg_rating FROM movies m JOIN ratings r ON m.id = r.movie_id;

#MySQL plans to execute the SELECT query
CREATE VIEW top_movies AS SELECT m.title, AVG(r.avg_rating) AS avg_rating FROM movies  JOIN ratings r ON m.id = r.movie_id GROUP BY m.title;

#Creating Index
CREATE INDEX idx_movie_id ON ratings(movie_id);

