Project Overview

This project focuses on analyzing IMDB movie data using MySQL to extract meaningful insights related to movie count, ratings, genres, duration, country-wise distribution, and performance trends. The analysis is performed using SQL queries, joins, aggregations, window functions, views, and indexing to demonstrate strong database and analytical skills.

🛠 Tools & Technologies

Database: MySQL

IDE: MySQL Workbench

Language: SQL

🗂 Database Schema

The database imdb_sql consists of the following tables:

movies – Movie details such as title, year, duration, country, language, and production company

ratings – Average rating, total votes, and median rating for each movie

genres – Genre classification for movies

📊 Key Analysis Performed
🎥 Movie Insights

Total number of movies available in the dataset

Number of movies released per year

Average movie duration

Movies longer than the average duration

⭐ Ratings Analysis

Top 10 highest-rated movies

Average rating for each movie

Ranking movies using window functions (RANK)

Movies with more than 100,000 votes

🎭 Genre Analysis

Most common movie genres

Average rating by genre

🌍 Geographic Analysis

Country-wise movie distribution

⚙️ Advanced SQL Concepts Used

INNER JOINS for combining movie, rating, and genre data

Aggregate functions (COUNT, AVG, ROUND)

Subqueries

Window functions (RANK)

Views for reusable queries

Indexes for performance optimization

EXPLAIN to understand query execution plans

📁 Project Files
IMDB-MySQL-Analysis/
│
├── imdb_mysql_analysis.sql   # Database creation, tables, queries
├── README.md                 # Project documentation

▶️ How to Run This Project

Open MySQL Workbench

Create a new SQL tab

Run the following:

Database and table creation queries

Data import (if applicable)

Analysis queries

Execute individual queries to view insights

📈 Key Outcomes

Identified high-performing movies based on ratings and votes

Analyzed genre popularity and rating trends

Improved query performance using indexing

Demonstrated structured SQL analysis on real-world movie data

📌 Skills Demonstrated

MySQL · SQL Queries · Data Analysis · Joins · Window Functions · Indexing · Views · Query Optimization

🔗 Author

Karan Madav
Data Analyst | SQL | Power BI | Python
