
CREATE TABLE artists (
id SERIAL PRIMARY KEY, first name VARCHAR(50) NOT NULL, last name VARCHAR(50) NOT NULL), paintings_id INTEGER REFERENCES paintings(id));


CREATE TABLE paintings (
id SERIAL PRIMARY KEY, title VARCHAR(100) NOT NULL, year INTEGER NOT NULL, artists_id INTEGER REFERENCES artists(id)
);


