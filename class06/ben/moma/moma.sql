/*
	Class 06 Homework

	Ben Collins

	SQL load file for Moma app exercise
*/

-- artists table
DROP TABLE IF EXISTS artists CASCADE;
CREATE TABLE artists (
	id 			SERIAL PRIMARY KEY,
	name 		VARCHAR(100) NOT NULL,
	nationality	VARCHAR(100) NOT NULL
);

-- paintings table
DROP TABLE IF EXISTS paintings CASCADE;
CREATE TABLE paintings (
	id			SERIAL PRIMARY KEY,
	title		VARCHAR(100),
	artist_id	INTEGER REFERENCES artists(id)
);