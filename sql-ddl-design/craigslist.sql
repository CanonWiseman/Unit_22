DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE users
(
    id SERIAL PRIMARY KEY,
    first_name TEXT REQUIRED,
    last_name TEXT REQUIRED,
    email TEXT REQUIRED,
    region_id REFERENCES regions ON DELETE CASCADE
);

CREATE TABLE regions
(
    id SERIAL PRIMARY KEY,
    name TEXT REQUIRED
);

CREATE TABLE posts
(
    id SERIAL PRIMARY KEY,
    title TEXT REQUIRED,
    description TEXT REQUIRED,
    location TEXT REQUIRED,
    category REFERENCES categories ON DELETE CASCADE,
    region_id REFERENCES regions ON DELETE CASCADE,
    user_id REFERENCES users ON DELETE CASCADE
);

CREATE TABLE categories
(
    id SERIAL PRIMARY KEY,
    name TEXT REQUIRED
)