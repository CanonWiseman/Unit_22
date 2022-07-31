-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  band REFERENCES bands,
  album REFERENCES albums,
);

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT,
)

CREATE TABLE bands
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
)

CREATE TABLE album 
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  band REFERENCES bands,
  producer REFERENCES producers
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
