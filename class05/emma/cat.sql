DROP TABLE IF EXISTS cats;
CREATE TABLE cats (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  age INTEGER NOT NULL
);

INSERT INTO cats (name, age) VALUES ('meow', 10),
('meow', 1),
('milk', 13),
('fresca', 4),
('kitty', 5),
('butch', 9);