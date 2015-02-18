-- # Create a new database
-- # moma_db

DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  nationality VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS paintings;
CREATE TABLE paintings(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  artist_id INTEGER REFERENCES artists(id)
);

-- DROP TABLE IF EXISTS characters;
-- CREATE TABLE characters(
--   id SERIAL PRIMARY KEY,
--   name VARCHAR(100)
-- );

-- DROP TABLE IF EXISTS performances;
-- CREATE TABLE performances(
--   id SERIAL PRIMARY KEY,
--   song_id INTEGER REFERENCES songs(id),
--   character_id INTEGER REFERENCES characters(id)
-- );