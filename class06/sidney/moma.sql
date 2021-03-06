-- # Create a new database
-- # moma_db

DROP TABLE IF EXISTS artists;
CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name VARCHAR(40) NOT NULL,
  nationality VARCHAR(50) NOT NULL
);

 DROP TABLE IF EXISTS paintings;
 CREATE TABLE paintings(
   id SERIAL PRIMARY KEY,
   title VARCHAR(100) NOT NULL,
   artists_id INTEGER REFERENCES artists(id)
);

