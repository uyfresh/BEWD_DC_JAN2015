DROP TABLE IF EXISTS padawans;

CREATE TABLE padawans (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  lightsaber VARCHAR(50) DEFAULT 'blue',
  training_missions INTEGER DEFAULT 0,
  apprenticeship_complete BOOLEAN DEFAULT FALSE
);

INSERT INTO padawans (name, lightsaber, training_missions, apprenticeship_complete) VALUES 
('Steve Grievous','purple',5,FALSE),
('Aron Calrissian','blue',4,FALSE),
('Grand Adam Tarkin','white',4,FALSE),
('Dan Windu','red',8,FALSE),
('Wyeth the Hutt','yellow',9,FALSE),
('Jon-Wan Kenobi','blue',6,FALSE),
('Philip Gunray','purple',8,FALSE),
('Uy2-D2','white',8,FALSE),
('Josh Maul','red',4,FALSE),
('Kathy Skywalker','blue',9,FALSE),
('Count Klajdi Plagueis','red',6,FALSE),
('Darth Abera','red',7,FALSE),
('Michelle Duo','orange',5,FALSE),
('Cindy Secura','orange',4,FALSE),
('Nabeel Dooku','green',7,FALSE),
('Ben Lars of Tatooine','purple',8,FALSE),
('Zoheb Binks','green',3,FALSE),
('Nick Rendar','red',4,FALSE),
('Sid-Gon Jinn','white',5,FALSE),
('Nikki-Fet Sidius','green',5,FALSE),
('Emma Vindi','blue',5,FALSE),
('Rick Organa','blue',8,FALSE),
('Tina Adi-Mundi','purple',4,FALSE);