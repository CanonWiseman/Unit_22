DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors
(
    id SERIAL PRIMARY KEY,
    first_name TEXT REQUIRED,
    last_name TEXT REQUIRED
);

CREATE TABLE patients
(
    id SERIAL PRIMARY KEY,
    first_name TEXT REQUIRED,
    last_name TEXT REQUIRED
);

CREATE TABLE diseases
(
    id SERIAL PRIMARY KEY,
    name TEXT REQUIRED
);

CREATE TABLE appointments
(
    id SERIAL PRIMARY KEY,
    doctor_id REFERENCES doctors ON DELETE CASCADE,
    patient_id REFERENCES patients ON DELETE CASCADE
);

CREATE TABLE diagnostics
(
    id SERIAL PRIMARY KEY,
    patient_id REFERENCES patients ON DELETE CASCADE,
    disease_id REFERENCES diseases ON DELETE CASCADE
);

