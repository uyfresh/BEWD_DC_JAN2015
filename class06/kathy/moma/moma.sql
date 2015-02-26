

CREATE TABLE artists (
id SERIAL PRIMARY KEY,
name VARCHAR (100) NOT NULL,
nationality VARCHAR (150)
);

CREATE TABLE paintings (
id SERIAL PRIMARY KEY,
title VARCHAR (150) NOT NULL,
artist_by INTEGER REFERENCES artists (id)
);
