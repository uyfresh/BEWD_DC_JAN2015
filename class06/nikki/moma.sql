DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  artists VARCHAR(50) NOT NULL

);

DROP TABLE IF EXISTS paintings;
CREATE TABLE paintings (
  id SERIAL PRIMARY KEY,
  paintings VARCHAR(50) NOT NULL
  artist_id INTEGER REFERENCES artsits(id)
);

