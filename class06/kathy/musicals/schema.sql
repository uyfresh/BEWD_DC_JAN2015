-- # Create a new database
-- # broadway_db

DROP TABLE IF EXISTS musicals;
CREATE TABLE musicals (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  composer VARCHAR(100) NOT NULL,
  lyricist VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS songs;
CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  musical_id INTEGER REFERENCES musicals(id)
);

--DROP TABLE IF EXISTS characters;
--CREATE TABLE characters(
--id SERIAL PRIMARY KEY,
 --name VARCHAR(100),
-- );

-- DROP TABLE IF EXISTS performances;
-- CREATE TABLE performances(
--   id SERIAL PRIMARY KEY,
--   song_id INTEGER REFERENCES songs(id),
--   character_id INTEGER REFERENCES characters(id)
-- );