# psql -d moma_db -f moma.sql

DROP TABLE IF EXISTS artists; 
CREATE TABLE artists (
	id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	nationality VARCHAR(30) NOT NULL
);

DROP TABLE IF EXISTS paintings;
CREATE TABLE paintings (
	id SERIAL PRIMARY KEY,
	title VARCHAR(100) NOT NULL,
	artist_id INTEGER REFERENCES artists(id)
);
