-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline REFERENCES ,
  from_city REFERENCES cities,
  from_country REFERENCES countries,
  to_city REFERENCES cities,
  to_country REFERENCES countries
);

CREATE TABLE cities
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE countries
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE airlines
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
