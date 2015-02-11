-- # Create a new database
-- # broadway_db

-- # Create a table called musicals
-- # id
-- # title
-- # year
-- # composer
-- # lyricist

CREATE TABLE musicals (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  year INTEGER NOT NULL,
  composer VARCHAR(100) NOT NULL,
  lyricist VARCHAR(100) NOT NULL
);

CREATE TABLE songs(
  id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  musical_id INTEGER REFERENCES musicals(id)
);

CREATE TABLE characters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE performances(
  id SERIAL PRIMARY KEY,
  song_id INTEGER REFERENCES songs(id),
  character_id INTEGER REFERENCES characters(id)
);