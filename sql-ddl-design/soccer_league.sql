DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams
(
    id SERIAL PRIMARY KEY,
    team_name VARCHAR(25) REQUIRED,
    team_ranking INT REQUIRED,
    league REFERENCES leagues
);

CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    first_name TEXT REQUIRED,
    last_name TEXT REQUIRED
);

CREATE TABLE goals
(
    id SERIAL PRIMARY KEY,
    player_id REFERENCES players,
    match_id REFERENCES matches
);

CREATE TABLE matches
(
    id SERIAL PRIMARY KEY,
    team_1 REFERENCES teams,
    team_2 REFERENCES teams,
    referee REFERENCES referees
);

CREATE TABLE referees
(
    id SERIAL PRIMARY KEY,
    first_name TEXT REQUIRED,
    last_name TEXT REQUIRED
);

CREATE TABLE leagues
(
    id SERIAL PRIMARY KEY,
    start_date DATE REQUIRED,
    end_date DATE REQUIRED
);
