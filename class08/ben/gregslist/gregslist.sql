/*
	Gregslist

	Database for Gregslist Sinatra app
*/

-- Items table
DROP TABLE IF EXISTS items CASCADE;
CREATE TABLE items (
	id 			SERIAL PRIMARY KEY,
	item 		VARCHAR(100) NOT NULL,
	price		INTEGER NOT NULL,
	location	VARCHAR(100) NOT NULL
);

