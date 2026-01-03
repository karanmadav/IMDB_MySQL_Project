IMDB_MySQL_Project/
├── data/
│   └── imdb_movies.csv
├── sql/
│   ├── create_schema.sql
│   └── load_data.sql
├── queries/
│   └── imdb_queries.sql
├── README.md
├── .gitignore

--- .gitignore ---
__pycache__/
*.pyc
*.env
*.log
*.bak

--- README.md ---
# IMDB MySQL Project

This repository contains a MySQL database project for the IMDB dataset.

## Project Structure
- `data/` – Dataset files (CSV)
- `sql/` – SQL scripts for schema and data loading
- `queries/` – SQL queries analysis

## Setup Instructions

1. Create Database:
```sql
CREATE DATABASE imdb_db;
USE imdb_db;

