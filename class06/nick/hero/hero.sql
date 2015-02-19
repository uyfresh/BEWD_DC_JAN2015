DROP TABLE IF EXISTS heros;

CREATE TABLE heros (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  alter_ego VARCHAR(50) NOT NULL,
  has_cape BOOLEAN,
  power VARCHAR(50),
  arch_nemisis VARCHAR(50)
);